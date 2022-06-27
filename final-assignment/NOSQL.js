db.createCollection("Properties");
db.createCollection("Branches");

db.Properties.insertMany(
  {
    _id: "P1",
    branch: "B1",
    list_price: 250000,
    list_type: "FS",
    prop_type: "Terraced",
    list_date: new Date(), // Research date
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
    list_date: new Date(), // Research date
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
    list_date: new Date(), // Research date
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
    list_price: 250000,
    list_type: "FS",
    prop_type: "Semi-Detached",
    list_date: new Date(), // Research date
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
    list_price: 325000,
    list_type: "S",
    prop_type: "Flat",
    list_date: new Date(), // Research date
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
    list_date: new Date(), // Research date
    prop_desc: "Small flat suitable for a couple or just for one",
    prop_area: 1200,
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
    _id: "P7",
    branch: "B2",
    list_price: 675000,
    list_type: "FS",
    prop_type: "Flat",
    list_date: new Date(), // Research date
    prop_desc: "A very nice property with amazing views of the park, medium bedroom, and lounge.",
    prop_area: 5500,
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
    _id: "P8",
    branch: "B2",
    list_price: 675000,
    list_type: "FS",
    prop_type: "Flat",
    list_date: new Date(), // Research date
    prop_desc: "A very nice property with amazing views of the park, medium bedroom, and lounge.",
    prop_area: 5500,
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
);

db.Customers.insertMany(
  {
    _id: 'C1',
    cust_first_name: 'Daniel',
    cust_last_name: 'Heery',
    cust_gender: 'M',
    cust_dob: new Date(), // Input a date
    cust_contact: [{
      email: 'heery@live.co.uk',
      tel: '07437519714',
    }],
    cust_addr: [{
      cust_addr_l1: '21 Knowle Road',
      cust_post_code: 'LS42PJ',
      cust_city: 'Leeds',
      cust_location: 'Burley'
    }],
    prop_let: 'P4'
  },
  {
    _id: 'C2',
    cust_first_name: 'Elizabeth',
    cust_last_name: 'Jones',
    cust_gender: 'F',
    cust_dob: new Date(), // Input a date
    cust_contact: [{
      email: 'elizjones@live.co.uk',
      tel: '07437519664',
    }],
    cust_addr: [{
      cust_addr_l1: '48 Wolseley Gardens',
      cust_post_code: 'NE21HR',
      cust_city: 'Leeds',
      cust_location: 'Burley'
    }],
    props_owned: [{prop_id: 'P1'}, {prop_id: 'P2'}]
  },
  {
    _id: 'C3',
    cust_first_name: 'Ryan',
    cust_last_name: 'Phillips',
    cust_gender: 'M',
    cust_dob: new Date(), // Input a date
    cust_contact: [{
      email: 'rp@live.co.uk',
      tel: '07437339664',
    }],
    cust_addr: [{
      cust_addr_l1: '21 Knowle Road',
      cust_post_code: 'LS42PJ',
      cust_city: 'Leeds',
      cust_location: 'Burley'
    }],
    props_owned: [{prop_id: 'P1'}, {prop_id: 'P2'}]
  }
)

// db.Branches.insert(
//   {
//     _id: "B1",
//     ea_id: "EA1",
//     branch_addr: [{
//       branch_addr: '123 Heaton Road',
//       branch_post_code: 'NE2 1PJ',
//       branch_location: 'Heaton',
//       branch_city: 'Newcastle'
//     }],
//     branch_contact: [{
//       branch_tel: '0133 564 4678',
//       branch_email: 'branch_1@ea1.co.uk'
//     }]
//   }
// );
// db.Branches.insert(
//   {
//     _id: "B2",
//     ea_id: "EA1",
//     branch_addr: [{
//       branch_addr: '123 Jesmond Road',
//       branch_post_code: 'NE2 1FR', 
//       branch_location: 'Jesmond',
//       branch_city: 'Newcastle'
//     }],
//     branch_contact: [{
//       branch_tel: '0133 564 4619',
//       branch_email: 'branch_2@ea1.co.uk'
//     }]
//   }
// );
// db.Branches.insert(
//   {
//     _id: "B3",
//     ea_id: "EA2",
//     branch_addr: [{
//       branch_addr: '30 Gordon Terrace',
//       branch_post_code: 'LS6 4HX',
//       branch_location: 'Meanwood',
//       branch_city: 'Leeds'
//     }],
//     branch_contact: [{
//       branch_tel: '0133 564 4678',
//       branch_email: 'branch_3@ea2.co.uk'
//     }]
//   }
// );
// db.Branches.insert(
//   {
//     _id: "B4",
//     ea_id: "EA2",
//     branch_addr: [{
//       branch_addr: '21 Knowle Road',
//       branch_post_code: 'LS4 2PJ',
//       branch_location: 'Burley',
//       branch_city: 'Leeds'
//     }],
//     branch_contact: [{
//       branch_tel: '0133 564 4678',
//       branch_email: 'branch_4@ea2.co.uk'
//     }]
//   }
// );