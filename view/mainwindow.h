#pragma once

#include "sidebarwidget.h"

#include <QStackedWidget>
#include <QWidget>

class MainWindow : public QWidget {
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    void initView();
    void initLogic();

protected:
    void closeEvent(QCloseEvent *event) override;

private:
    SidebarWidget *sidebarWidget;
    QStackedWidget *mainContainer;
};
