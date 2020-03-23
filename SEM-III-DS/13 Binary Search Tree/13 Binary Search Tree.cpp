//binary search tree
#include<iostream>
#include<cstdlib>
using namespace std;
struct node
{
	struct node*left;
	struct node*right;
	int info;
};
typedef struct node nodet;
nodet*root = NULL;
int create(int item)
{
	nodet*newnode, *curptr, *ptr;
	newnode = (nodet*)malloc(sizeof(nodet));
	newnode->info = item;
	newnode->left = NULL;
	newnode->right = NULL;
	if (root == NULL)
		root = newnode;
	else
	{
		curptr = root;
		while (curptr != NULL)
		{
			ptr = curptr;
			curptr = (item > curptr->info) ? curptr->right : curptr->left;
		}
		if (item < ptr->info)
			ptr->left = newnode;
		else
			ptr->right = newnode;
	}
}
nodet*search(nodet*temp, int item)
{
	if (temp == NULL)
		return NULL;
	else if (item < temp->info)
		search(temp->left, item);
	else if (item > temp->info)
		search(temp->right, item);
	else
		return temp;
}
int preorder(nodet*ptr)
{
	if (ptr != NULL)
	{
		cout << endl << ptr->info << endl;
		preorder(ptr->left);
		preorder(ptr->right);
	}
}
int inorder(nodet*ptr)
{
	if(ptr != NULL)
	{
		inorder(ptr->left);
		cout << endl << ptr->info << endl;
		inorder(ptr->right);
	}
}
int postorder(nodet*ptr)
{
	if (ptr != NULL)
	{
		postorder(ptr->left);
		postorder(ptr->right);
		cout << endl << ptr->info << endl;
	}
}
int main(void)
{
	int ch, n, item, i;
	cin.ignore();
	while (1)
	{
		cout << endl << "Binary Search Tree" << endl;
		cout << endl << "1.Create BST.";
		cout << endl << "2.Search in BST.";
		cout << endl << "3.Display BST:PreOrder.";
		cout << endl << "4.Display BST:InOrder.";
		cout << endl << "5.Display BST:PostOrder.";
		cout << endl << "6.Exit.";
		cout << endl << "Choice:";
		cin >> ch;
		switch (ch)
		{
		case 1:cout << endl << "No. of nodes:";
			cin >> n;
			for (i = 0; i < n; i++)
			{
				cout << endl << "Data for the node:" << endl;
				cin >> item;
				if (search(root, item) != NULL)
				{
					cout << endl << "Duplication detected." << endl;
					continue;
				}
				else
					create(item);
			}
			break;
		case 2:cout << endl << "Item to be searched:";
			cin >> item;
			if (search(root, item) != NULL)
				cout << endl << "Item found." << endl;
			else
			{
				create(item);
				cout << endl << "Item not found, hence item inserted." << endl;
			}
			break;
		case 3:cout << endl << "PreOrder Traversal" << endl;
			preorder(root);
			break;
		case 4:cout << endl << "InOrder Traversal" << endl;
			inorder(root);
			break;
		case 5:cout << endl << "PostOrder Traversal" << endl;
			postorder(root);
			break;
		case 6:exit(0);
		}
	}
}