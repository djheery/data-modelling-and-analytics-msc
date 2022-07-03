
db.Properties.drop();
db.Customers.drop();
db.createCollection("Properties");
db.createCollection("Customers");

db.Properties.insertMany([
  {
    _id: "P1",
    branch: "B1",
    list_price: 250000,
    list_type: "FS",
    prop_type: "Terraced",
    list_date: new Date('2021-11-01'), 
    prop_desc: "A very nice property with amazing views of the park, large bedroom, large lounge with beautiful kitchen and bathroom.",
    prop_area: 2000,
    prop_addr: [{
      prop_addr_l1: '48 Wolseley Gardens',
      prop_post_code: 'NE2 1HR',
      prop_city: 'Newcastle',
      prop_area: 'Jesmond'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Lovely large bedroom, with bay window',
          room_size: 500
        },
        {
          room_desc: 'Lovely medium bedroom with large window',
          room_size: 400
        },
        {
          room_desc: 'Small room, perfect for a study',
          room_size: 200
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom with sleek furnishings',
        room_size: 200
      }],
      living_space: [
        {
          room_desc: 'Modern living room with plenty of light from the south facing garden',
          room_size: 600
        },
        {
          room_desc: 'Modern kitchen, with door to garden',
          room_size: 300
        }
      ]
    }]
  },
  {
    _id: "P2",
    branch: "B1",
    list_price: 175000,
    list_type: "FS",
    prop_type: "Flat",
    list_date: new Date('2015-05-01'), 
    prop_desc: "A very nice property with amazing views of the park, medium bedroom, and lounge.",
    prop_area: 1000,
    prop_addr: [{
      prop_addr_l1: '20 Heaton Road',
      prop_post_code: 'NE4 2HR',
      prop_city: 'Newcastle',
      prop_area: 'Heaton'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Lovely medium bedroom, with bay window',
          room_size: 500
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom',
        room_size: 200
      }],
      living_space: [
        {
          room_desc: 'Good size living room with plenty of light from the south facing garden with kitchen',
          room_size: 600
        }
      ]
    }]
  },
  {
    _id: "P3",
    branch: "B2",
    list_price: 675000,
    list_type: "FS",
    prop_type: "Detached",
    list_date: new Date('2020-10-15'), 
    prop_desc: "An expansive property with amazing views of the river, large bedroom and lounge complete with stables.",
    prop_area: 5500,
    prop_addr: [{
      prop_addr_l1: '48 Osbourne Road',
      prop_post_code: 'NE4 2HR',
      prop_city: 'Newcastle',
      prop_area: 'Jesmond'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Bedroom 1',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 2',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 3',
          room_size: 500
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom',
        room_size: 500
      }],
      living_space: [
        {
          room_desc: 'Massive living room with door to the garden',
          room_size: 1000
        },
      ],
      garden: {
          room_desc: 'Large garden with stables',
          room_size: 2000
        }
    }]
  },
  {
    _id: "P4",
    branch: "B2",
    list_price: 2000,
    list_type: "L",
    prop_type: "Semi-Detached",
    list_date: new Date('2022-04-06'), 
    prop_desc: "Lovely new build, complete with all modern amenities. Buy to let investors welcome.",
    prop_area: 2500,
    prop_addr: [{
      prop_addr_l1: '40 Stickwell Avenue',
      prop_post_code: 'NE7 2HR',
      prop_city: 'Newcastle',
      prop_area: 'Jesmond'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Lovely medium bedroom, with bay window',
          room_size: 500
        },
        {
          room_desc: 'Medium size bedroom',
          room_size: 500
        },
        {
          room_desc: 'Study/ Bedroom 3',
          room_size: 300
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom',
        room_size: 200
      }, 
      {
        room_desc: '2nd bathroom',
        room_size: 300
      }
      ],
      living_space: [
        {
          room_desc: 'Good size living room',
          room_size: 200
        }
      ]
    }]
  },
  {
    _id: "P5",
    branch: "B3",
    list_price: 525000,
    list_type: "S",
    prop_type: "Detached",
    list_date: new Date('2021-06-26'), 
    prop_desc: "Everything you could ask for in burley.",
    prop_area: 3500,
    prop_addr: [{
      prop_addr_l1: '22 Knowle Road',
      prop_post_code: 'LS4 2PJ',
      prop_city: 'Leeds',
      prop_area: 'Burley'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Bedroom 1 - Large, bright',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 2 - Large, ensuite',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 3 - Large, comes with desk',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 4 - Large, comes with desk and armchair',
          room_size: 500
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom, shared between 3',
        room_size: 200
      }],
      living_space: [
        {
          room_desc: 'Massive living room with door to the garden',
          room_size: 300
        },
        {
          room_desc: 'Small Kitchen with modern furnishings',
          room_size: 200
        }
      ],
      garden: {
          room_desc: 'medium sized garden with bbq',
          room_size: 500
        }
    }]
  },
  {
    _id: "P6",
    branch: "B3",
    list_price: 1200,
    list_type: "FL",
    prop_type: "Flat",
    list_date: new Date('2020-11-30'), 
    prop_desc: "Small flat suitable for a couple or just for one",
    prop_area: 2500,
    prop_addr: [{
      prop_addr_l1: '20 Heaton Road',
      prop_post_code: 'NE4 2HR',
      prop_city: 'Newcastle',
      prop_area: 'Heaton'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Bedroom 1',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 2',
          room_size: 500
        }
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom',
        room_size: 500
      }],
      living_space: [
        {
          room_desc: 'Small living room with Balcony overlooking the river',
          room_size: 1000
        },
      ]
    }]
  },
  {
    _id: "P7",
    branch: "B2",
    list_price: 1800,
    list_type: "FL",
    prop_type: "Semi-Detached",
    list_date: new Date('2022-05-03'), 
    prop_desc: "Beautiful interior with fresh curtains",
    prop_area: 1500,
    prop_addr: [{
      prop_addr_l1: '33 Undertaker Lane',
      prop_post_code: 'NE4 2HP',
      prop_city: 'Gateshead',
      prop_area: 'Felling'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Bedroom 1',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 2',
          room_size: 500
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom',
        room_size: 500
      }]
    }]
  },
  {
    _id: "P8",
    branch: "B2",
    list_price: 485000,
    list_type: "FS",
    prop_type: "Flat",
    list_date: new Date('2022-04-01'), 
    prop_desc: "A lovely property with modern interior",
    prop_area: 4600,
    prop_addr: [{
      prop_addr_l1: '10 Sunderland Road',
      prop_post_code: 'NE4 2FR',
      prop_city: 'Gateshead',
      prop_area: 'NE3 44P'
    }],
    prop_rooms: [{
      bedrooms: [
        {
          room_desc: 'Bedroom 1',
          room_size: 500
        },
        {
          room_desc: 'Bedroom 2',
          room_size: 500
        },
      ],
      bathrooms: [{
        room_desc: 'Modern bathroom',
        room_size: 500
      }],
      living_space: [
        {
          room_desc: 'Massive living room with door to the garden',
          room_size: 1000
        },
      ],
      garden: {
          room_desc: 'Large garden',
          room_size: 600
        }
    }]
  },
]);

db.Customers.insertMany([
  {
    _id: 'C1',
    cust_first_name: 'Daniel',
    cust_last_name: 'Heery',
    cust_gender: 'M',
    cust_dob: new Date("1994-04-06"), 
    cust_contact: [{
      email: 'heery@live.co.uk',
      tel: '07437519714',
    }],
    cust_addr: [{
      cust_addr_l1: '21 Knowle Road',
      cust_post_code: 'LS42PJ',
      cust_town_city: 'Leeds',
      cust_location: 'Burley'
    }],
    props_owned: [],
    props_let: 
  },
  {
    _id: 'C2',
    cust_first_name: 'Elizabeth',
    cust_last_name: 'Jones',
    cust_gender: 'F',
    cust_dob: new Date("1995-12-16"), 
    cust_contact: [{
      email: 'elizjones@live.co.uk',
      tel: '07437519664',
    }],
    cust_addr: [{
      cust_addr_l1: '48 Wolseley Gardens',
      cust_post_code: 'NE21HR',
      cust_town_city: 'Leeds',
      cust_location: 'Burley'
    }],
    props_owned: [{_id: 'P1'}, {_id: 'P2'}]
  },
  {
    _id: 'C3',
    cust_first_name: 'Ryan',
    cust_last_name: 'Phillips',
    cust_gender: 'M',
    cust_dob: new Date('1992-12-13'), 
    cust_contact: [{
      email: 'rp@live.co.uk',
      tel: '07437339664',
    }],
    cust_addr: [{
      cust_addr_l1: '21 Knowle Road',
      cust_post_code: 'LS42PJ',
      cust_town_city: 'Leeds',
      cust_location: 'Burley'
    }],
    props_owned: [{_id: 'P3'}, {_id: 'P7'}]
  },
  {
    _id: 'C4',
    cust_first_name: 'Mark',
    cust_other_name: 'John',
    cust_last_name: 'Guiliana',
    cust_gender: 'M',
    cust_dob: new Date('1985-12-05'), 
    cust_contact: [{
      email: 'mg@live.co.uk',
      tel: '07437339764',
    }],
    cust_addr: [{
      cust_addr_l1: '30 Gordon Terrace',
      cust_post_code: 'LS64HX',
      cust_town_city: 'Leeds',
      cust_location: 'Meanwood'
    }],
    props_owned: [{_id: 'P4', _id: 'P6'}]
  },
  {
    _id: 'C5',
    cust_first_name: 'John',
    cust_last_name: 'Bishop',
    cust_gender: 'M',
    cust_dob: new Date('1976-08-21'), 
    cust_contact: [{
      email: 'jb@live.co.uk',
      tel: '07337339764',
    }],
    cust_addr: [{
      cust_addr_l1: '12 Felling Gate Road',
      cust_post_code: 'NE24 7PP',
      cust_town_city: 'Gateshead',
      cust_location: 'Felling Gate'
    }],
    props_owned: [{_id: 'P3'}]
  },
  {
    _id: 'C6',
    cust_first_name: 'Brian',
    cust_last_name: 'Cox',
    cust_gender: 'M',
    cust_dob: new Date('1971-01-01'), 
    cust_contact: [{
      email: 'bcox@live.co.uk',
      tel: '07437773976',
    }],
    cust_addr: [{
      cust_addr_l1: '10 Adeilade Court',
      cust_post_code: 'SR2 5PS',
      cust_town_city: 'Sunderland',
      cust_location: 'City Centre'
    }],
    props_owned: [{_id: 'P8'}]
  },
])

db.Properties.find({}).pretty();
db.Customers.find({}).pretty();

db.Properties.aggregate([
  {
    $lookup: {
      from: "Customers",
      localField: "_id",
      foreignField: "props_owned._id",
      as: "Props Owned"
    }
  }
]).pretty();