
#include <iostream>
#include <string.h>
#include <conio.h>
#include <iomanip>
#include <math.h>

using namespace std;


typedef struct sinhvien
{
	char mssv[10];
	char tensv[30];
	float Toan;
	float Ly;
	float Hoa;
	float dtb;
}SV;


typedef struct node
{
	SV info;
	struct node* pNext;
}NODE;


typedef struct list
{
	NODE* pHead;
	NODE* pTail;
	int n;
}LIST;

void init(LIST &l);
NODE* TaoNode(SV sv);
void NhapSV(SV &sv);
void Input(LIST &l, SV &sv);
void Input(LIST &l, SV &sv);
void ChenDau(LIST &l, NODE* ele);
void ChenCuoi(LIST &l, NODE* ele);
void XuatSV(LIST l);
void XuatDSSV(LIST l, SV sv);
void LietKeSV(LIST l);
void maxdtb(LIST l);
void LietKeSVnomon(LIST l);
void LietKeSVcanhcao(LIST l);
int Menu()
{
	int c;
	cout << endl << endl << "                      CHUONG TRINH QUAN LY SV" << endl;
	cout << "          ------------------------------------------------------" << endl;
	cout << "          |      1 : nhap danh sach.                           |" << endl;
	cout << "          |      2 : Xuat Danh Sach.                           |" << endl;
	cout << "          |      3 : Liet ke sv co DTB >= 7 va khong no mon nao duoi tb .                           |" << endl;
	cout << "          |      4 : Sinh vien co dtb cao nhat.                           |" << endl;
	cout << "          |      5 : Sinh vien bi canh cao hoc vu.                           |" << endl;
	cout << "          |      6 : Sinh vien con no it nhat 1 mon.                           |" << endl;
	cout << "xin moi ban chon:"; cin >> c;
	return c;

}
void XuatSV(SV sv)
{

	cout << "          *          MSSV : " << sv.mssv << "." << endl;
	cout << "          *          Ho Ten : " << sv.tensv << "." << endl;
	cout << "          *          Diem Toan : " << sv.Toan << "." << endl;
	cout << "          *          Diem Ly : " << sv.Ly << "." << endl;
	cout << "          *          Diem Hoa : " << sv.Hoa << "." << endl;
	cout << "          *          Diem TBC : " << sv.dtb << "." << endl;
	
}
void XuatDSSV(LIST l, SV sv)
{
	int i = 1;
	cout << "                      DANH SACH SV" << endl;
	cout << "          ********************************************" << endl;
	for (NODE* p = l.pHead; p != NULL; p = p->pNext)
	{
		cout << "          *          xe thu " << i << ":" << endl;
		XuatSV(p->info);
		if (p != l.pTail)
			cout << "          *___________________________________________" << endl;
		i++;
	}
	cout << "          ********************************************";
}
// nhap danh sach sinh vien
void init(LIST &l)
{
	l.pHead = NULL;
	l.pTail = NULL;
}


NODE* TaoNode(SV sv)
{
	NODE* p;
	p = new NODE;
	if (p == NULL)
		return NULL;
	p->info = sv;
	p->pNext = NULL;
	return p;
}
void NhapSV(SV &sv)
{
	cin.ignore(1);
	cout << "Nhap MSSV : ";
	cin.get(sv.mssv, 10);
	cin.ignore(1);
	cout << "Nhap Ho Ten SV : ";
	cin.get(sv.tensv, 30);
	cout << "Diem mon Toan : ";
	cin >> sv.Toan;
	cout << "Diem mon Ly : ";
	cin >> sv.Ly;
	cout << "Diem Mon Hoa : ";
	cin >> sv.Hoa;
	sv.dtb = (sv.Toan + sv.Hoa + sv.Ly) / 3;
	//cout << (sv.Toan + sv.Ly + sv.Hoa) / 3;
	//cin >> sv.dtb;
	
}
void ChenDau(LIST &l, NODE* ele)
{
	if (l.pHead == NULL)
	{
		l.pHead = ele;
		l.pTail = l.pHead;
	}
	else
	{
		ele->pNext = l.pHead;
		l.pHead = ele;
	}
}
void ChenCuoi(LIST &l, NODE* ele)
{
	if (l.pTail == NULL)
		ChenDau(l, ele);
	else
	{
		ele->pNext = l.pTail->pNext;
		l.pTail->pNext = ele;
		l.pTail = ele;
	}
}
void Input(LIST &l,SV &sv)
{
	int n;
	NODE* p;
	cout << endl << endl << "nhap so sv :";
	cin >> n;
	for (int i = 1; i <= n; i++)
	{
		cout << endl << endl << "nhap thong tin sv thu " << i << endl;
		cout << "---------------------------------" << endl;
		NhapSV(sv);
		p = TaoNode(sv);
		ChenCuoi(l, p);
		cout << endl << endl;
	}
}
// in danh sach tong hop sinh vien sap xep theo ten tang dan
void HoanVi(SV &a, SV &b)
{
	SV t = a;
	a = b;
	b = t;
}
void SapXepTenTangDan(LIST l)
{
	for (NODE*p = l.pHead; p; p = p->pNext)
	for (NODE* p1 = p->pNext; p1; p1 = p1->pNext)
	if (p->info.tensv>p1->info.tensv)
		HoanVi(p->info, p1->info);
}

// in danh sach tong hop sinh vien sap xep theo diem trung binh chung giam dan
void SapXepDiemGiamDan(LIST l)
{
	for (NODE*p = l.pHead; p; p = p->pNext)
	for (NODE* p1 = p->pNext; p1; p1 = p1->pNext)
		
	if (p->info.dtb>p1->info.dtb)
		HoanVi(p->info, p1->info);
}
void maxdtb(LIST l)
{
	NODE *p, *max;
	//int dem;
	p = l.pHead;
	max = p;
	while (p != NULL)
	{
		if (p->info.dtb>max->info.dtb)  { max = p;}
		p = p->pNext;
	}
	printf("\n    SV co diem trung binh cao nhat la: \n");
	XuatSV(max->info);
	
}
void LietKeSV(LIST l)
{
	NODE* p;
	int flag = 0;
	cout << "          DANH SACH SINH VIEN CO DIEM TRUNG BINH  >=  7 VA KHONG NO MON NAO" << endl;
	cout << "          ********************************************" << endl;
	for (p = l.pHead; p; p = p->pNext)
	if (((p->info.Toan + p->info.Ly + p->info.Hoa) / 3) >= 7 && p->info.Toan >= 5 && p->info.Ly >= 5 && p->info.Hoa >= 5)
	{
		XuatSV(p->info);
		flag = 1;
		if (p != l.pTail)
			cout << "          *___________________________________________" << endl;
	}
	if (flag == 0)
		cout << "khong co sinh vien nao co diem trung binh >=7 va khong no mon nao " << endl;
	cout << "          ********************************************" << endl;
}
void LietKeSVcanhcao(LIST l)
{
	NODE* p;
	int flag = 0;
	cout << "          DANH SACH SINH VIEN BI CANH CAO HOC VU" << endl;
	cout << "          ********************************************" << endl;
	for (p = l.pHead; p; p = p->pNext)
	if (p->info.dtb < 4 )
	{
		XuatSV(p->info);
		flag = 1;
		if (p != l.pTail)
			cout << "          *___________________________________________" << endl;
	}
	if (flag == 0)
		cout << "khong co sinh vien nao bi canh cao hoc vu" << endl;
	cout << "          ********************************************" << endl;
}
void LietKeSVnomon(LIST l)
{
	NODE* p;
	int flag = 0;
	cout << "          DANH SACH SINH VIEN CON NO IT NHAT 1 MON HOC" << endl;
	cout << "          ********************************************" << endl;
	for (p = l.pHead; p; p = p->pNext)
	if ( p->info.Toan < 5 || p->info.Ly < 5 || p->info.Hoa < 5)
	{
		XuatSV(p->info);
		flag = 1;
		if (p != l.pTail)
			cout << "          *___________________________________________" << endl;
	}
	if (flag == 0)
		cout << "khong co sinh vien nao no mon" << endl;
	cout << "          ********************************************" << endl;
}
int main()
{

	int chon;
	SV sv;
	LIST l;
	do{
		chon = Menu();
		switch (chon)
		{
		case 0: return 0;
		case 1:
		{
				  init(l);
				  Input(l, sv);
				  cout << endl << endl << endl;
		}break;
		case 2:
			XuatDSSV(l, sv); break;
				
		case 3:
		{
				  LietKeSV(l);
		}break;
		case 4:
		{
				  maxdtb(l);
		}break;
		case 5:
		{
				 LietKeSVcanhcao(l);
		}break;
		case 6:
		{
				  LietKeSVnomon(l);
		}break;
		}

	} while (true);
	system("pause");
}