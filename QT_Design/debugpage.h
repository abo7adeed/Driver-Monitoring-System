// debugPage.h
#ifndef DEBUGPAGE_H
#define DEBUGPAGE_H
#include <QQuickView>
#include <QObject>

class debugPage : public QObject
{
    Q_OBJECT
public:
    explicit debugPage(QObject *parent = nullptr);

public slots:
    void openDebugPage(); // Slot to open the debug page

private:
     QQuickView view;
         // Any additional variables or functions you need
};

#endif // DEBUGPAGE_H
