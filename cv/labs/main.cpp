#include <iostream>
#include <fstream>
#include <sstream>
#include "matrix.cpp"
#include <math.h>
#include <vector>

using namespace std;
Matrix multPointMatrix(Matrix in, Matrix M){
  Matrix out = Matrix(1, 4);
  out(0,0)  = in(0,0) * M(0,0) + in(0,1) * M(1,0) + in(0,2) * M(2,0) +  M(3,0);
  out(0,1)  = in(0,0) * M(0,1) + in(0,1) * M(1,1) + in(0,2) * M(2,1) +  M(3,1);
  out(0,2)  = in(0,0) * M(0,2) + in(0,1) * M(1,2) + in(0,2) * M(2,2) +  M(3,2);
  out(0,3)  = in(0,0) * M(0,3) + in(0,1) * M(1,3) + in(0,2) * M(2,3) +  M(3,3);
  float w = out(0,3);
  out(0,0) /= w;
  out(0,1) /= w;
  out(0,2) /= w;

  return out;
}
Matrix setProjectionMatrix(const float &near, const float &far, Matrix m)
{
  float scale = 1 / tan(90 * 0.5 * M_PI / 180);
  m(0,0) = scale;
  m(1,1) = scale;
  m(2,2) = -far / (far - near);
  m(3,2) = -far * near / (far - near);
  m(2,3) = -1;
  m(3,3) = 0;
  return m;
}
Matrix setCamera(Matrix m)
{
  m(0,0) = 1;
  m(1,1) = 1;
  m(2,2) = 1;
  m(3,0) = 0;
  m(3,1) = 0;
  m(3,2) = -5;
  m(3,3) = 1;
  return m;
}

int main() {
  int imageWidth = 500;
  int imageHeight = 500;
  string line;
  ifstream myFile ("/Users/ankurM/Development/cv/labs/cube.txt");
  getline (myFile,line);
  istringstream iss(line);
  int size = 0; iss >> size;
  Matrix pm = Matrix(4,4);
  pm = setProjectionMatrix(0.1, 100, pm);
  Matrix shift = Matrix(4,4);
  shift = setCamera(shift);
  vector<Matrix> arr;
  arr.reserve(size);
  int i = 0; int j = 0;
  if (myFile.is_open())
  {
    while (getline (myFile,line) )
    {
      Matrix m = Matrix(1, 4);
      int a, b, c;
      istringstream iss(line);
      iss >> a >> b >> c;
      m(0,j) = a;
      m(0,j+1) =b;
      m(0,j+2) =c;
      m(0,j+3) = 1;
      //m.display();
      arr.push_back(m);
      ++i;
    }
    myFile.close();
  }
  else{
    cout << "Unable to open file";
    return 0;
  }
  vector<int> xco;
  vector<int> yco;
  for (unsigned i = 0; i<arr.size(); i++){
    Matrix temp = multPointMatrix(arr.at(i) , shift);
    temp = multPointMatrix(temp , pm);
    double projX = (temp(0,0) + 1) * 0.5 * imageWidth;
    double projY = (1 - ((temp(0,1) + 1) * 0.5)) * imageHeight;
    xco.push_back(projX);
    yco.push_back(projY);
    std::cout << projX << ", "<< projY << std::endl;
  }

  return 0;
}