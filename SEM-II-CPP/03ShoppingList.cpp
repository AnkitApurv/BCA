//to generate shopping list
#include <iostream>
#include <iomanip>

using namespace std;

class item
{
  public:
    item();
    ~item();
    void getData();
    void printData();
    
  private:
    char name[25];
    int size = 3;
    int streamSize = 8;
    int quantity;
    float rate, amount;
};

void item::getData()
{
    cout << endl << "Enter item name :" <<endl;
    cin >> name;
    cout << endl << "Enter item quantity :" <<endl;
    cin >> quantity;
    cout << endl << "Enter item rate :";
    cin >> rate;
}

void item::printData()
{
    cout << endl << setw(streamSize) << name;
    cout << setw(streamSize) << quantity;
    cout << setw(streamSize) << rate;
    amount = rate * quantity;
    cout << setw(streamSize) << amount << endl;
}

int main(void)
{
    
    return 0;
}