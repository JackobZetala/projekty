#include "mainwindow.h"
#include "ui_mainwindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    db.setHostName("127.0.0.1");
    db.setUserName("root");
    db.setPassword("root");
    db.setDatabaseName("stolarnia_magazyn");
}

MainWindow::~MainWindow()
{

    delete ui;
}


void MainWindow::on_pushButtonCon_clicked()
{


    if(db.open())
    {
        QMessageBox::information(this,"connection","Connection successfully");

    }

    else
    {
        QMessageBox::information(this,"not connection","Connection unsuccessfully");
    }
}


void MainWindow::on_pushButtonZaloguj_clicked()
{


    QString login = ui->lineEditLogin->text();
    QString haslo = ui->lineEditHaslo->text();
    if(db.open())
    {

        query.prepare(QString("SELECT * FROM uzytkownik WHERE login = :login AND rola = :haslo"));
        query.bindValue(":login",login);
        query.bindValue(":haslo",haslo);

        if(!query.exec())
        {
            QMessageBox::information(this,"ERROR","Brak wartosci");
        }

        else
        {
            while(query.next())
            {
                QString usernameFromDB = query.value(1).toString();
                QString passwordFromDB = query.value(2).toString();

                if(usernameFromDB == login && passwordFromDB == haslo)
                {
                    ui->stackedWidget->setCurrentIndex(1);
                    ui->lineEditLogin->clear();
                    ui->lineEditHaslo->clear();
                }
                else
                {
                    QMessageBox::information(this,"Logowanie","Nie udało się zalogować");
                }


            }

        }
    }

    else
    {
        QMessageBox::information(this,"Connection","Nie połączono z bazą");
    }

}


void MainWindow::on_pushButtonWroc_clicked()
{


    ui->stackedWidget->setCurrentIndex(0);
}


void MainWindow::on_pushButtonWrocZDodaj_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);
}


void MainWindow::on_pushButtonPoZalDodaj_clicked()
{
    ui->stackedWidget->setCurrentIndex(2);
}


void MainWindow::on_pushButtonDodDodaj_clicked()
{



    if(db.open())
    {
        QString Nazwa = ui->lineEditDodNazwa->text();
        QString Jednostka_pods = ui->lineEditDodJedPod->text();
        QString Jednostki_w_sztuce = ui->lineEditDodJedSztu->text();
        QString Opis = ui->lineEditDodOpis->text();
        QString Typ = ui->lineEditDodTyp->text();
        QString Producent = ui->lineEditDodProdu->text();
        QString Podtyp = ui->lineEditDodPodtyp->text();
        QString Material = ui->lineEditDodMat->text();
        QString Kolor = ui->lineEditDodKolor->text();
        QString Dlugosc_nominalna = ui->lineEditDodDlugNom->text();
        QString Szerokosc_nominalna = ui->lineEditDodSzerNom->text();
        QString Grubosc = ui->lineEditDodGrub->text();
        QString Struktura = ui->lineEditDodStrukt->text();
        QString Gradacja = ui->lineEditDodGradacja->text();
        QString Srednica = ui->lineEditDodSrednica->text();

        query.prepare("INSERT INTO produkt_opisowy ( Nazwa,Jednostka_pods,Jednostki_w_sztuce,Opis,Typ,Producent,Podtyp,Material,Kolor,Dlugosc_nominalna,Szerokosc_nominalna,Grubosc,Struktura,Gradacja,Srednica)"
                      "VALUES (:Nazwa,:Jednostka_pods,:Jednostki_w_sztuce,:Opis,:Typ,:Producent,:Podtyp,:Material,:Kolor,:Dlugosc_nominalna,:Szerokosc_nominalna,:Grubosc,:Struktura,:Gradacja,:Srednica)");

        query.bindValue(":Nazwa",Nazwa);
        query.bindValue(":Jednostka_pods",Jednostka_pods);
        query.bindValue(":Jednostki_w_sztuce",Jednostki_w_sztuce);
        query.bindValue(":Opis",Opis);
        query.bindValue(":Typ",Typ);
        query.bindValue(":Producent",Producent);
        query.bindValue(":Podtyp",Podtyp);
        query.bindValue(":Material",Material);
        query.bindValue(":Kolor",Kolor);
        query.bindValue(":Dlugosc_nominalna",Dlugosc_nominalna);
        query.bindValue(":Szerokosc_nominalna",Szerokosc_nominalna);
        query.bindValue(":Grubosc",Grubosc);
        query.bindValue(":Struktura",Struktura);
        query.bindValue(":Gradacja",Gradacja);
        query.bindValue(":Srednica",Srednica);

        if(query.exec())
        {
            QMessageBox::information(this,"Wartosci","Wpisano wartosci");
        }

        else
        {
            QMessageBox::information(this,"ERROR","Brak wartosci");

        }
    }


}

void MainWindow::on_pushButton_2_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);
}


void MainWindow::on_pushButtonPoZalUsun_clicked()
{
    ui->stackedWidget->setCurrentIndex(3);
}


void MainWindow::on_pushButtonUsun_clicked()
{

    if(db.open())
    {
        QString status = ui->lineEditUsun->text();

        query.prepare("DELETE FROM produkt_opisowy WHERE id_prod_opis='"+status+"'"
                      );





        if(query.exec())
        {
            QMessageBox::information(this,"Usun","Usunieto wartosc");
        }

        else
        {
            QMessageBox::information(this,"ERROR","Nie usunieto wartosci");


        }
    }
    else
    {
        QMessageBox::information(this,"ERROR","Nie dziala");

    }


}


void MainWindow::on_pushButtonPoZalRaport1_clicked()
{
    if(db.open())
    {
        querymodel = new QSqlQueryModel();
        querymodel->setQuery("SELECT * FROM uzytkownik");
        ui->tableView->setModel(querymodel);
        ui->stackedWidget->setCurrentIndex(4);
    }else {
        QMessageBox::information(this,"FAIL","Connection fail");
    }

}






void MainWindow::on_pushButtonRap1Wroc_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);

}


void MainWindow::on_pushButtonRap2Wroc_clicked()
{
    ui->stackedWidget->setCurrentIndex(1);

}


void MainWindow::on_pushButtonPoZalRaport2_clicked()
{
    if(db.open())
    {


        querymodel = new QSqlQueryModel();
        querymodel->setQuery("SELECT * FROM produkt_opisowy");
        ui->tableView_rap2->setModel(querymodel);
        ui->stackedWidget->setCurrentIndex(5);
    }else {
        QMessageBox::information(this,"FAIL","Connection fail");
    }
}

