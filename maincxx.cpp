
#include <QtCore>
// #include <QtGui>
#include <QtWidgets>

extern "C"
int maincxx(int argc, char**argv) {
    QApplication app (argc, argv, 0);

    auto btn = new QPushButton("hello 世界!!!");
    btn->show();

    return app.exec();
}