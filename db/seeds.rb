Painting.destroy_all
paintings = [
  {  
    active: true,
    name: "Just Chillin'",
    medium: 'Acrylic on canvas',
    url: 'IMG_10.jpg',
    price: 3000
  },
  {   
    active: false,
    name: 'Before...',
    medium: 'Acrylic on canvas',
    url: 'IMG_01.jpg',
    price: 1200
  },
  {
    active: false,
    name: 'Spitting Image',
    medium: 'Acrylic on canvas',
    url: 'IMG_02.jpg',
    price: 1800
  },
  {   
    active: false,
    name: 'Cards are on the Table',
    medium: 'Acrylic on canvas',
    url: 'IMG_03.jpg',
    price: 1500
  },
  {   
    active: false,
    name: 'Behind the Scenes',
    medium: 'Acrylic on canvas',
    url: 'IMG_04.jpg',
    price: 1200
  },
  {   
    active: false,
    name: "That's What I call glamour",
    medium: 'Acrylic on canvas',
    url: 'IMG_05.jpg',
    price: 2400
  },
  {   
    active: false,
    name: 'Walk',
    medium: 'Acrylic on canvas',
    url: 'IMG_06.jpg',
    price: 1800,
    sold: true
  },
  {     
    active: false,
    name: 'Legs',
    medium: 'Acrylic on canvas',
    url: 'IMG_07.jpg',
    price: 2000
  },
  {   
    active: false,
    name: 'Bare',
    medium: 'Acrylic on canvas',
    url: 'IMG_08.jpg',
    price: 1900
  },
  {   
    active: false,
    name: 'Line',
    medium: 'Acrylic on canvas',
    url: 'IMG_09.jpg',
    price: 1200
  }
]
paintings.each do |painting|
  Painting.create(
    active: painting[:active],
    name: painting[:name],
    medium: painting[:medium],
    url: painting[:url],
    price: painting[:price]
  )
end