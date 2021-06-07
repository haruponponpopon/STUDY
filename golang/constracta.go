package main

import "fmt"

type Vertex struct {
	X, Y int
}

func (v Vertex) Area() int {
	return v.X * v.Y
}

func (v *Vertex) Scale(i int) {
	v.X = v.X * i
	v.Y = v.Y * i
}

func Area(v Vertex) int {
	return v.X * v.Y
}

func New1(x, y int) *Vertex {
	return &Vertex{x, y}
}

type Vertex3D struct {
	Vertex
	Z int
}

func (v Vertex3D) Area3D() int {
	return v.X * v.Y * v.Z
}

func (v *Vertex3D) Scale3D(i int) {
	v.X = v.X * i
	v.Y = v.Y * i
	v.Z = v.Z * i
}

func New(x, y, z int) *Vertex3D {
	return &Vertex3D{Vertex{x, y}, z}
}

func main() {
	// v := Vertex{3, 4}
	// fmt.Println(Area(v))
	v := New(3, 4, 5)
	v.Scale(10)
	fmt.Println(v.Area())
	fmt.Println(v.Area3D())
}
