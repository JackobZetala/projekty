/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.3.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStackedWidget>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTableView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QStackedWidget *stackedWidget;
    QWidget *Logowanie;
    QWidget *layoutWidget;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QLineEdit *lineEditLogin;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_2;
    QLineEdit *lineEditHaslo;
    QPushButton *pushButtonZaloguj;
    QWidget *PoZalogowaniu;
    QWidget *layoutWidget1;
    QVBoxLayout *verticalLayout_3;
    QPushButton *pushButtonPoZalDodaj;
    QPushButton *pushButtonPoZalUsun;
    QPushButton *pushButtonPoZalRaport1;
    QPushButton *pushButtonPoZalRaport2;
    QPushButton *pushButtonWroc;
    QWidget *DodajProdukt;
    QWidget *layoutWidget2;
    QVBoxLayout *verticalLayout_6;
    QHBoxLayout *horizontalLayout_25;
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout_16;
    QLabel *label_16;
    QLineEdit *lineEditDodNazwa;
    QHBoxLayout *horizontalLayout_9;
    QLabel *label_9;
    QLineEdit *lineEditDodJedPod;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label_5;
    QLineEdit *lineEditDodJedSztu;
    QHBoxLayout *horizontalLayout_6;
    QLabel *label_6;
    QLineEdit *lineEditDodOpis;
    QHBoxLayout *horizontalLayout_7;
    QLabel *label_7;
    QLineEdit *lineEditDodTyp;
    QHBoxLayout *horizontalLayout_8;
    QLabel *label_8;
    QLineEdit *lineEditDodProdu;
    QHBoxLayout *horizontalLayout_15;
    QLabel *label_15;
    QLineEdit *lineEditDodPodtyp;
    QVBoxLayout *verticalLayout_5;
    QHBoxLayout *horizontalLayout_17;
    QLabel *label_17;
    QLineEdit *lineEditDodMat;
    QHBoxLayout *horizontalLayout_18;
    QLabel *label_18;
    QLineEdit *lineEditDodKolor;
    QHBoxLayout *horizontalLayout_19;
    QLabel *label_19;
    QLineEdit *lineEditDodDlugNom;
    QHBoxLayout *horizontalLayout_20;
    QLabel *label_20;
    QLineEdit *lineEditDodSzerNom;
    QHBoxLayout *horizontalLayout_21;
    QLabel *label_21;
    QLineEdit *lineEditDodGrub;
    QHBoxLayout *horizontalLayout_22;
    QLabel *label_22;
    QLineEdit *lineEditDodStrukt;
    QHBoxLayout *horizontalLayout_23;
    QLabel *label_23;
    QLineEdit *lineEditDodGradacja;
    QHBoxLayout *horizontalLayout_24;
    QLabel *label_24;
    QLineEdit *lineEditDodSrednica;
    QPushButton *pushButtonDodDodaj;
    QPushButton *pushButtonWrocZDodaj;
    QWidget *uSUN;
    QPushButton *pushButtonUsun;
    QPushButton *pushButton_2;
    QWidget *widget;
    QVBoxLayout *verticalLayout_2;
    QLabel *label_3;
    QLineEdit *lineEditUsun;
    QWidget *rap1;
    QPushButton *pushButtonRap1Wroc;
    QTableView *tableView;
    QWidget *rap2;
    QTableView *tableView_rap2;
    QPushButton *pushButtonRap2Wroc;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(800, 600);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        stackedWidget = new QStackedWidget(centralwidget);
        stackedWidget->setObjectName(QString::fromUtf8("stackedWidget"));
        stackedWidget->setGeometry(QRect(0, 0, 800, 600));
        Logowanie = new QWidget();
        Logowanie->setObjectName(QString::fromUtf8("Logowanie"));
        layoutWidget = new QWidget(Logowanie);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(190, 120, 401, 261));
        verticalLayout = new QVBoxLayout(layoutWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label = new QLabel(layoutWidget);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout->addWidget(label);

        lineEditLogin = new QLineEdit(layoutWidget);
        lineEditLogin->setObjectName(QString::fromUtf8("lineEditLogin"));

        horizontalLayout->addWidget(lineEditLogin);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_2 = new QLabel(layoutWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        horizontalLayout_2->addWidget(label_2);

        lineEditHaslo = new QLineEdit(layoutWidget);
        lineEditHaslo->setObjectName(QString::fromUtf8("lineEditHaslo"));
        lineEditHaslo->setEchoMode(QLineEdit::Password);

        horizontalLayout_2->addWidget(lineEditHaslo);


        verticalLayout->addLayout(horizontalLayout_2);

        pushButtonZaloguj = new QPushButton(layoutWidget);
        pushButtonZaloguj->setObjectName(QString::fromUtf8("pushButtonZaloguj"));

        verticalLayout->addWidget(pushButtonZaloguj);

        stackedWidget->addWidget(Logowanie);
        PoZalogowaniu = new QWidget();
        PoZalogowaniu->setObjectName(QString::fromUtf8("PoZalogowaniu"));
        layoutWidget1 = new QWidget(PoZalogowaniu);
        layoutWidget1->setObjectName(QString::fromUtf8("layoutWidget1"));
        layoutWidget1->setGeometry(QRect(290, 130, 181, 271));
        verticalLayout_3 = new QVBoxLayout(layoutWidget1);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(0, 0, 0, 0);
        pushButtonPoZalDodaj = new QPushButton(layoutWidget1);
        pushButtonPoZalDodaj->setObjectName(QString::fromUtf8("pushButtonPoZalDodaj"));

        verticalLayout_3->addWidget(pushButtonPoZalDodaj);

        pushButtonPoZalUsun = new QPushButton(layoutWidget1);
        pushButtonPoZalUsun->setObjectName(QString::fromUtf8("pushButtonPoZalUsun"));

        verticalLayout_3->addWidget(pushButtonPoZalUsun);

        pushButtonPoZalRaport1 = new QPushButton(layoutWidget1);
        pushButtonPoZalRaport1->setObjectName(QString::fromUtf8("pushButtonPoZalRaport1"));

        verticalLayout_3->addWidget(pushButtonPoZalRaport1);

        pushButtonPoZalRaport2 = new QPushButton(layoutWidget1);
        pushButtonPoZalRaport2->setObjectName(QString::fromUtf8("pushButtonPoZalRaport2"));

        verticalLayout_3->addWidget(pushButtonPoZalRaport2);

        pushButtonWroc = new QPushButton(layoutWidget1);
        pushButtonWroc->setObjectName(QString::fromUtf8("pushButtonWroc"));

        verticalLayout_3->addWidget(pushButtonWroc);

        stackedWidget->addWidget(PoZalogowaniu);
        DodajProdukt = new QWidget();
        DodajProdukt->setObjectName(QString::fromUtf8("DodajProdukt"));
        layoutWidget2 = new QWidget(DodajProdukt);
        layoutWidget2->setObjectName(QString::fromUtf8("layoutWidget2"));
        layoutWidget2->setGeometry(QRect(40, 30, 691, 491));
        verticalLayout_6 = new QVBoxLayout(layoutWidget2);
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        verticalLayout_6->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_25 = new QHBoxLayout();
        horizontalLayout_25->setObjectName(QString::fromUtf8("horizontalLayout_25"));
        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        horizontalLayout_16 = new QHBoxLayout();
        horizontalLayout_16->setObjectName(QString::fromUtf8("horizontalLayout_16"));
        label_16 = new QLabel(layoutWidget2);
        label_16->setObjectName(QString::fromUtf8("label_16"));

        horizontalLayout_16->addWidget(label_16);

        lineEditDodNazwa = new QLineEdit(layoutWidget2);
        lineEditDodNazwa->setObjectName(QString::fromUtf8("lineEditDodNazwa"));

        horizontalLayout_16->addWidget(lineEditDodNazwa);


        verticalLayout_4->addLayout(horizontalLayout_16);

        horizontalLayout_9 = new QHBoxLayout();
        horizontalLayout_9->setObjectName(QString::fromUtf8("horizontalLayout_9"));
        label_9 = new QLabel(layoutWidget2);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        horizontalLayout_9->addWidget(label_9);

        lineEditDodJedPod = new QLineEdit(layoutWidget2);
        lineEditDodJedPod->setObjectName(QString::fromUtf8("lineEditDodJedPod"));

        horizontalLayout_9->addWidget(lineEditDodJedPod);


        verticalLayout_4->addLayout(horizontalLayout_9);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        label_5 = new QLabel(layoutWidget2);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        horizontalLayout_5->addWidget(label_5);

        lineEditDodJedSztu = new QLineEdit(layoutWidget2);
        lineEditDodJedSztu->setObjectName(QString::fromUtf8("lineEditDodJedSztu"));

        horizontalLayout_5->addWidget(lineEditDodJedSztu);


        verticalLayout_4->addLayout(horizontalLayout_5);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        label_6 = new QLabel(layoutWidget2);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        horizontalLayout_6->addWidget(label_6);

        lineEditDodOpis = new QLineEdit(layoutWidget2);
        lineEditDodOpis->setObjectName(QString::fromUtf8("lineEditDodOpis"));

        horizontalLayout_6->addWidget(lineEditDodOpis);


        verticalLayout_4->addLayout(horizontalLayout_6);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        label_7 = new QLabel(layoutWidget2);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        horizontalLayout_7->addWidget(label_7);

        lineEditDodTyp = new QLineEdit(layoutWidget2);
        lineEditDodTyp->setObjectName(QString::fromUtf8("lineEditDodTyp"));

        horizontalLayout_7->addWidget(lineEditDodTyp);


        verticalLayout_4->addLayout(horizontalLayout_7);

        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QString::fromUtf8("horizontalLayout_8"));
        label_8 = new QLabel(layoutWidget2);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        horizontalLayout_8->addWidget(label_8);

        lineEditDodProdu = new QLineEdit(layoutWidget2);
        lineEditDodProdu->setObjectName(QString::fromUtf8("lineEditDodProdu"));

        horizontalLayout_8->addWidget(lineEditDodProdu);


        verticalLayout_4->addLayout(horizontalLayout_8);

        horizontalLayout_15 = new QHBoxLayout();
        horizontalLayout_15->setObjectName(QString::fromUtf8("horizontalLayout_15"));
        label_15 = new QLabel(layoutWidget2);
        label_15->setObjectName(QString::fromUtf8("label_15"));

        horizontalLayout_15->addWidget(label_15);

        lineEditDodPodtyp = new QLineEdit(layoutWidget2);
        lineEditDodPodtyp->setObjectName(QString::fromUtf8("lineEditDodPodtyp"));

        horizontalLayout_15->addWidget(lineEditDodPodtyp);


        verticalLayout_4->addLayout(horizontalLayout_15);


        horizontalLayout_25->addLayout(verticalLayout_4);

        verticalLayout_5 = new QVBoxLayout();
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        horizontalLayout_17 = new QHBoxLayout();
        horizontalLayout_17->setObjectName(QString::fromUtf8("horizontalLayout_17"));
        label_17 = new QLabel(layoutWidget2);
        label_17->setObjectName(QString::fromUtf8("label_17"));

        horizontalLayout_17->addWidget(label_17);

        lineEditDodMat = new QLineEdit(layoutWidget2);
        lineEditDodMat->setObjectName(QString::fromUtf8("lineEditDodMat"));

        horizontalLayout_17->addWidget(lineEditDodMat);


        verticalLayout_5->addLayout(horizontalLayout_17);

        horizontalLayout_18 = new QHBoxLayout();
        horizontalLayout_18->setObjectName(QString::fromUtf8("horizontalLayout_18"));
        label_18 = new QLabel(layoutWidget2);
        label_18->setObjectName(QString::fromUtf8("label_18"));

        horizontalLayout_18->addWidget(label_18);

        lineEditDodKolor = new QLineEdit(layoutWidget2);
        lineEditDodKolor->setObjectName(QString::fromUtf8("lineEditDodKolor"));

        horizontalLayout_18->addWidget(lineEditDodKolor);


        verticalLayout_5->addLayout(horizontalLayout_18);

        horizontalLayout_19 = new QHBoxLayout();
        horizontalLayout_19->setObjectName(QString::fromUtf8("horizontalLayout_19"));
        label_19 = new QLabel(layoutWidget2);
        label_19->setObjectName(QString::fromUtf8("label_19"));

        horizontalLayout_19->addWidget(label_19);

        lineEditDodDlugNom = new QLineEdit(layoutWidget2);
        lineEditDodDlugNom->setObjectName(QString::fromUtf8("lineEditDodDlugNom"));

        horizontalLayout_19->addWidget(lineEditDodDlugNom);


        verticalLayout_5->addLayout(horizontalLayout_19);

        horizontalLayout_20 = new QHBoxLayout();
        horizontalLayout_20->setObjectName(QString::fromUtf8("horizontalLayout_20"));
        label_20 = new QLabel(layoutWidget2);
        label_20->setObjectName(QString::fromUtf8("label_20"));

        horizontalLayout_20->addWidget(label_20);

        lineEditDodSzerNom = new QLineEdit(layoutWidget2);
        lineEditDodSzerNom->setObjectName(QString::fromUtf8("lineEditDodSzerNom"));

        horizontalLayout_20->addWidget(lineEditDodSzerNom);


        verticalLayout_5->addLayout(horizontalLayout_20);

        horizontalLayout_21 = new QHBoxLayout();
        horizontalLayout_21->setObjectName(QString::fromUtf8("horizontalLayout_21"));
        label_21 = new QLabel(layoutWidget2);
        label_21->setObjectName(QString::fromUtf8("label_21"));

        horizontalLayout_21->addWidget(label_21);

        lineEditDodGrub = new QLineEdit(layoutWidget2);
        lineEditDodGrub->setObjectName(QString::fromUtf8("lineEditDodGrub"));

        horizontalLayout_21->addWidget(lineEditDodGrub);


        verticalLayout_5->addLayout(horizontalLayout_21);

        horizontalLayout_22 = new QHBoxLayout();
        horizontalLayout_22->setObjectName(QString::fromUtf8("horizontalLayout_22"));
        label_22 = new QLabel(layoutWidget2);
        label_22->setObjectName(QString::fromUtf8("label_22"));

        horizontalLayout_22->addWidget(label_22);

        lineEditDodStrukt = new QLineEdit(layoutWidget2);
        lineEditDodStrukt->setObjectName(QString::fromUtf8("lineEditDodStrukt"));

        horizontalLayout_22->addWidget(lineEditDodStrukt);


        verticalLayout_5->addLayout(horizontalLayout_22);

        horizontalLayout_23 = new QHBoxLayout();
        horizontalLayout_23->setObjectName(QString::fromUtf8("horizontalLayout_23"));
        label_23 = new QLabel(layoutWidget2);
        label_23->setObjectName(QString::fromUtf8("label_23"));

        horizontalLayout_23->addWidget(label_23);

        lineEditDodGradacja = new QLineEdit(layoutWidget2);
        lineEditDodGradacja->setObjectName(QString::fromUtf8("lineEditDodGradacja"));

        horizontalLayout_23->addWidget(lineEditDodGradacja);


        verticalLayout_5->addLayout(horizontalLayout_23);

        horizontalLayout_24 = new QHBoxLayout();
        horizontalLayout_24->setObjectName(QString::fromUtf8("horizontalLayout_24"));
        label_24 = new QLabel(layoutWidget2);
        label_24->setObjectName(QString::fromUtf8("label_24"));

        horizontalLayout_24->addWidget(label_24);

        lineEditDodSrednica = new QLineEdit(layoutWidget2);
        lineEditDodSrednica->setObjectName(QString::fromUtf8("lineEditDodSrednica"));

        horizontalLayout_24->addWidget(lineEditDodSrednica);


        verticalLayout_5->addLayout(horizontalLayout_24);


        horizontalLayout_25->addLayout(verticalLayout_5);


        verticalLayout_6->addLayout(horizontalLayout_25);

        pushButtonDodDodaj = new QPushButton(layoutWidget2);
        pushButtonDodDodaj->setObjectName(QString::fromUtf8("pushButtonDodDodaj"));

        verticalLayout_6->addWidget(pushButtonDodDodaj);

        pushButtonWrocZDodaj = new QPushButton(layoutWidget2);
        pushButtonWrocZDodaj->setObjectName(QString::fromUtf8("pushButtonWrocZDodaj"));

        verticalLayout_6->addWidget(pushButtonWrocZDodaj);

        stackedWidget->addWidget(DodajProdukt);
        uSUN = new QWidget();
        uSUN->setObjectName(QString::fromUtf8("uSUN"));
        pushButtonUsun = new QPushButton(uSUN);
        pushButtonUsun->setObjectName(QString::fromUtf8("pushButtonUsun"));
        pushButtonUsun->setGeometry(QRect(360, 310, 93, 29));
        pushButton_2 = new QPushButton(uSUN);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));
        pushButton_2->setGeometry(QRect(380, 420, 93, 29));
        widget = new QWidget(uSUN);
        widget->setObjectName(QString::fromUtf8("widget"));
        widget->setGeometry(QRect(260, 190, 285, 55));
        verticalLayout_2 = new QVBoxLayout(widget);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        label_3 = new QLabel(widget);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        verticalLayout_2->addWidget(label_3);

        lineEditUsun = new QLineEdit(widget);
        lineEditUsun->setObjectName(QString::fromUtf8("lineEditUsun"));

        verticalLayout_2->addWidget(lineEditUsun);

        stackedWidget->addWidget(uSUN);
        rap1 = new QWidget();
        rap1->setObjectName(QString::fromUtf8("rap1"));
        pushButtonRap1Wroc = new QPushButton(rap1);
        pushButtonRap1Wroc->setObjectName(QString::fromUtf8("pushButtonRap1Wroc"));
        pushButtonRap1Wroc->setGeometry(QRect(310, 450, 93, 29));
        tableView = new QTableView(rap1);
        tableView->setObjectName(QString::fromUtf8("tableView"));
        tableView->setGeometry(QRect(60, 40, 671, 381));
        stackedWidget->addWidget(rap1);
        rap2 = new QWidget();
        rap2->setObjectName(QString::fromUtf8("rap2"));
        tableView_rap2 = new QTableView(rap2);
        tableView_rap2->setObjectName(QString::fromUtf8("tableView_rap2"));
        tableView_rap2->setGeometry(QRect(60, 20, 671, 351));
        pushButtonRap2Wroc = new QPushButton(rap2);
        pushButtonRap2Wroc->setObjectName(QString::fromUtf8("pushButtonRap2Wroc"));
        pushButtonRap2Wroc->setGeometry(QRect(360, 430, 93, 29));
        stackedWidget->addWidget(rap2);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 26));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        label->setText(QCoreApplication::translate("MainWindow", "Login:", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "Has\305\202o:", nullptr));
        pushButtonZaloguj->setText(QCoreApplication::translate("MainWindow", "Zaloguj", nullptr));
        pushButtonPoZalDodaj->setText(QCoreApplication::translate("MainWindow", "Dodaj", nullptr));
        pushButtonPoZalUsun->setText(QCoreApplication::translate("MainWindow", "Usun", nullptr));
        pushButtonPoZalRaport1->setText(QCoreApplication::translate("MainWindow", "Raport1", nullptr));
        pushButtonPoZalRaport2->setText(QCoreApplication::translate("MainWindow", "Raport2", nullptr));
        pushButtonWroc->setText(QCoreApplication::translate("MainWindow", "Wr\303\263\304\207", nullptr));
        label_16->setText(QCoreApplication::translate("MainWindow", "Nazwa", nullptr));
        label_9->setText(QCoreApplication::translate("MainWindow", "Jednostka podstawowa", nullptr));
        label_5->setText(QCoreApplication::translate("MainWindow", "Jednostaka w sztuce", nullptr));
        label_6->setText(QCoreApplication::translate("MainWindow", "Opis", nullptr));
        label_7->setText(QCoreApplication::translate("MainWindow", "Typ", nullptr));
        label_8->setText(QCoreApplication::translate("MainWindow", "Producent", nullptr));
        label_15->setText(QCoreApplication::translate("MainWindow", "Podtyp", nullptr));
        label_17->setText(QCoreApplication::translate("MainWindow", "Material", nullptr));
        label_18->setText(QCoreApplication::translate("MainWindow", "Kolor", nullptr));
        label_19->setText(QCoreApplication::translate("MainWindow", "Dlugosc nominalna", nullptr));
        label_20->setText(QCoreApplication::translate("MainWindow", "Szerokosc nominalna", nullptr));
        label_21->setText(QCoreApplication::translate("MainWindow", "Grubosc", nullptr));
        label_22->setText(QCoreApplication::translate("MainWindow", "Struktura", nullptr));
        label_23->setText(QCoreApplication::translate("MainWindow", "Gradacja", nullptr));
        label_24->setText(QCoreApplication::translate("MainWindow", "Srednica", nullptr));
        pushButtonDodDodaj->setText(QCoreApplication::translate("MainWindow", "Dodaj", nullptr));
        pushButtonWrocZDodaj->setText(QCoreApplication::translate("MainWindow", "Wr\303\263\304\207", nullptr));
        pushButtonUsun->setText(QCoreApplication::translate("MainWindow", "Usun", nullptr));
        pushButton_2->setText(QCoreApplication::translate("MainWindow", "Wroc", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "Podaj id produktu opisowego do usunieica", nullptr));
        pushButtonRap1Wroc->setText(QCoreApplication::translate("MainWindow", "Wroc", nullptr));
        pushButtonRap2Wroc->setText(QCoreApplication::translate("MainWindow", "Wroc", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
