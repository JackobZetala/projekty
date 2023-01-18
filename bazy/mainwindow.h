#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include "QtSql/QSql"
#include "QtSql/QSqlDatabase"
#include <QMessageBox>
#include <QMainWindow>
#include "QSqlQuery"
#include <QtDebug>
#include <QDialog>
#include "QSqlQueryModel"
#include "QTableView"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:    
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:

    void on_pushButtonCon_clicked();

    void on_pushButtonZaloguj_clicked();

    void on_pushButtonWroc_clicked();

    void on_pushButtonWrocZDodaj_clicked();

    void on_pushButtonPoZalDodaj_clicked();

    void on_pushButtonDodDodaj_clicked();

    void on_pushButton_2_clicked();

    void on_pushButtonPoZalUsun_clicked();

    void on_pushButtonUsun_clicked();

    void on_pushButtonPoZalRaport1_clicked();

    //void on_pushButtonRap1Dod_clicked();

    void on_pushButtonRap1Wroc_clicked();

    void on_pushButtonRap2Wroc_clicked();

    void on_pushButtonPoZalRaport2_clicked();

private:
    Ui::MainWindow *ui;
    QSqlDatabase db= QSqlDatabase::addDatabase("QMYSQL");
    QSqlQueryModel *querymodel;
    QSqlQuery query;



};
#endif // MAINWINDOW_H
