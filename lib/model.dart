
import 'package:flutter/material.dart';

class ModelData {
  final int id;
  final String imageUrl;
  final double price;
  final String discription,title;
  final List<String>sizeType;
  final List<Color>colors;


  const ModelData({
    required this.sizeType,
    required this.id,
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.discription,
    required this.colors
  });

}

const ModelList = [
  ModelData(
    id:1,
    imageUrl: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80',
    price: 234,
    title:'Sun glasses',
    discription: 'A member of the Tech Sunglasses Collection, Wayfarer Literforce sunglasses resemble an outstanding '
        'combination of innovative material and the unmistakable iconic Wayfarer design. Wayfarer Liteforce RB4195 '
        'sunglasses are constructed from a new high-performance thermoplastic, used in various high-tech industries '
        'including aerospace, automotive and medical technology. The first of its kind in the eyewear history, this'
        ' cutting-edge material provides superior lightness, durability, flexibility and comfort. '
        'The unique construction of the Wayfarer Liteforce allows for the same look and thickness of the Wayfarer Classic but with extreme lightness. '
        'These sunglasses come in a variety of vibrant frame colors including bright green, blue and violet, '
        'as well as traditional frame colors such as black and brown.',
    colors: [Color(0xffeeeeee),
      Color(0xfff0f8ff),
      Color(0xfff79e69),
      Color(0xfff0b57b),
      Colors.white,
    ],
    sizeType: [
      'S','L','M','XL','XXL'
    ]
  ),

  /*ModelData(
    id: 'id-004',
    imageUrl: 'https://images.unsplash.com/photo-'
        '1602143407151-7111542de6e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVu'
        'fDB8fHx8&auto=format&fit=crop&w=387&q=80',
    price: 7868,
    title:'Water Bottle',
    discription: '',
  ),
  ModelData(
    id: 'id-005',
    imageUrl: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    price: 454,
    title:'Apple Watch Gn 4',
    discription: '',
  ),
  ModelData(
    id: 'id-006',
    imageUrl: 'https://images.unsplash.com/photo-1543512214-318c7553f230?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    price: 6756,
    title:'Alexas amazon Speakers',
    discription: '',

  ),
  ModelData(
    id: 'id-007',
    imageUrl: 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    price: 1000,
    title:'Flower pattern blue heels',
    discription: '',
  ),
  ModelData(
    id: 'id-008',
    imageUrl: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    price: 40000,
    title:'Golden-Frame sunglasses',
    discription: '',
  ),
  ModelData(
    id: 'id-009',
    imageUrl: 'https://images.unsplash.com/photo-1564466809058-bf4114d55352?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
    price: 56773,
    title:'Nikon m750 Camera'
    ,discription: '',
  ),
  ModelData(
    id: 'id-010',
    imageUrl: 'https://images.unsplash.com/photo-1556228578-0d85b1a4d571?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
    price: 86867,
    title:'Curology-Cleanser'
    ,discription: '',
  ),
  ModelData(
    id: 'id-011',
    imageUrl: 'https://images.unsplash.com/photo-1600080972464-8e5f35f63d08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    price: 78363,
    title:'X-box Console'
    ,discription: '',
  ),
  ModelData(
    id: 'id-012',
    imageUrl: 'https://images.unsplash.com/photo-1541643600914-78b084683601?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=404&q=80',
    price: 736367,
    title:'Chanel Perfume',
    discription: '',
  ),*//*
  ModelData(
    id: 'id-013',
    imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    price: 6746487,
    title:'Laptop Bag',
    discription: '',
  ),
  ModelData(
    id: 'id-014',
    imageUrl: 'https://images.unsplash.com/photo-1555487505-8603a1a69755?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    price: 377683,
    title:'Watch bands'
    ,discription: '',
  ),
  ModelData(
    id: 'id-015',
    imageUrl: 'https://images.unsplash.com/photo-1580870069867-74c57ee1bb07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    price: 47382,
    title:'Ordinary Moisturizer'
    ,discription: '',
  ),
  ModelData(
    id: 'id-016',
    imageUrl: 'https://images.unsplash.com/photo-1504274066651-8d31a536b11a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    price: 1000000,
    title:'AirPods-3'
    ,discription: '',
  ),
  ModelData(
    id: 'id-017',
    imageUrl: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1888&q=80',
    price: 763883,
    title:'IWC-Watch'
    ,discription: '',
  ),
  ModelData(
    id: 'id-018',
    imageUrl: 'https://images.unsplash.com/photo-1555375771-14b2a63968a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80',
    price: 6376376,
    title:'iphone X '
    ,discription: '',
  ),
  ModelData(
    id: 'id-019',
    imageUrl: 'https://images.unsplash.com/photo-1545289414-1c3cb1c06238?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    price: 763736,
    title:'Puma snicker'
    ,discription: '',
  ),*/

];