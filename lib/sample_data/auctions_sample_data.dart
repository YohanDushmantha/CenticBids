// addAuctions(){
//   for(var item in auctions_sample_data_list){
//     firestoreInstance.collection('auctions').add(
//         item
//     ).then((value) => print(value.id));
//   }
//
// }

final auctions_sample_data_list = [
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
  'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
  'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
  'base_price': 144000,
  'latest_price': 144000,
  'clearance_date': 1617042600,
  'images': [
  'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
  'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
  'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
  'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
  'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
  ],
  'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 144000,
    'latest_price': 144000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 144000,
    'latest_price': 144000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 144000,
    'latest_price': 144000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 144000,
    'latest_price': 144000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 144000,
    'latest_price': 144000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Passo / X / 2007 / Red - GT1543',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 112000,
    'latest_price': 112000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841640198645.jpg',
      'https://cdn.auctionhousejapan.jp/large/GT1543/637383841633479626.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Volkswagen New Beetle / TURBO / 2002 / Silver - JX1314',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 178000,
    'latest_price': 178000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524405023278.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524413033255.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524420483270.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524441063003.jpg',
      'https://cdn.auctionhousejapan.jp/large/JX1314/637367524447312961.jpg'
    ],
    'created_date': 1615660200
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Beige - DV1610',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 144000,
    'latest_price': 144000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934194640988.jpg',
      'https://cdn.auctionhousejapan.jp/large/DV1610/637383934190734416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2006 / Red - AK1612',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 141000,
    'latest_price': 141000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933888907726.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933881094338.jpg',
      'https://cdn.auctionhousejapan.jp/large/AK1612/637383933885000929.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / White Pearl - GC1995',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1146000,
    'latest_price': 1146000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931629943237.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931585162393.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931559002007.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931520461340.jpg',
      'https://cdn.auctionhousejapan.jp/large/EN1848/637417931653553190.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Gray - QU1307',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1389000,
    'latest_price': 1389000,
    'clearance_date': 1617042000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412738501923.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412740846382.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412743033206.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412745533146.jpg',
      'https://cdn.auctionhousejapan.jp/large/QU1307/637450412756158822.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2004 / Silver - TI1170',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 157000,
    'latest_price': 180000,
    'clearance_date': 1617048000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301483015559.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301564738157.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301464577327.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301506141597.jpg',
      'https://cdn.auctionhousejapan.jp/large/CP1178/637370301544424797.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2007 / Black - FR1021',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 95000,
    'latest_price': 163827,
    'clearance_date': 1617090000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537770760032.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537659278885.jpg',
      'https://cdn.auctionhousejapan.jp/large/FR1021/637303537717864743.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / D Blue - MF1227',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 219000,
    'latest_price': 308601,
    'clearance_date': 1617010000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707742812495.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707721200605.jpg',
      'https://cdn.auctionhousejapan.jp/large/MF1227/637365707732502484.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2005 / Blue - NC1019',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 128000,
    'latest_price': 212511,
    'clearance_date': 1617142600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501633456381.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501353298368.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1019/637303501422355273.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2013 / Wine - IU1323',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 655000,
    'latest_price': 655000,
    'clearance_date': 1617054600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492627645675.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492563539266.jpg',
      'https://cdn.auctionhousejapan.jp/large/IU1323/637368492592072153.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Ford Escape / XLT / 2005 / Silver - XR1296',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 231000,
    'latest_price': 328339,
    'clearance_date': 1617030000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287041955467.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287033605401.jpg',
      'https://cdn.auctionhousejapan.jp/large/XR1296/637367287038235449.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Porsche Macan / MACAN / 2015 / Black - NM1386',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 7120000,
    'latest_price': 7222065,
    'clearance_date': 1617064000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137261815034.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137186655542.jpg',
      'https://cdn.auctionhousejapan.jp/large/NM1386/637376137227281927.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mercedes Benz A Class / A170 / 2005 / Silver - EP1233',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 122000,
    'latest_price': 204330,
    'clearance_date': 1617089000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436493054082.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436540634251.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436630577529.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436526665513.jpg',
      'https://cdn.auctionhousejapan.jp/large/WZ1502/637375436512268070.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 2.0 FSI / 2006 / Red - OP1369',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 269000,
    'latest_price': 351226,
    'clearance_date': 1617093000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038369825653.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038344519300.jpg',
      'https://cdn.auctionhousejapan.jp/large/OP1369/637376038356860239.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Hino Ranger / WING / 2005 / White - NP1005',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1331000,
    'latest_price': 1675031,
    'clearance_date': 1617055000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292246441265.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292299776598.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292371903810.jpg',
      'https://cdn.auctionhousejapan.jp/large/NP1005/637302292193125934.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan Caravan / DX / 2005 / White - ZG1030',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 446000,
    'latest_price': 553934,
    'clearance_date': 1617063000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561997319223.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561985912843.jpg',
      'https://cdn.auctionhousejapan.jp/large/ZG1030/637327561992006716.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Black - VB1304',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 109000,
    'latest_price': 184007,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170741888886.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170705178973.jpg',
      'https://cdn.auctionhousejapan.jp/large/VB1304/637367170729392004.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2006 / Silver - NU1080',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 260135,
    'clearance_date': 1617069000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829922174787.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829733494057.jpg',
      'https://cdn.auctionhousejapan.jp/large/NU1080/637303829847194962.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - TP1177',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 179000,
    'latest_price': 206000,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048229045692.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg',
      'https://cdn.auctionhousejapan.jp/large/YO1194/637383138201396372.jpg',
      'https://cdn.auctionhousejapan.jp/large/TP1177/637376048247640390.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Toyota Vitz / F / 2019 / Silver - RX1394',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1858000,
    'latest_price': 2042000,
    'clearance_date': 1617047000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332086113418.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332110020902.jpg',
      'https://cdn.auctionhousejapan.jp/large/RX1394/637376332135022172.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i / 2004 / Silver - UH1197',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 194000,
    'latest_price': 211000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195763152010.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195751433090.jpg',
      'https://cdn.auctionhousejapan.jp/large/VD1410/637383195791589742.jpg',
      'https://cdn.auctionhousejapan.jp/large/OJ1212/637371153138902657.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Honda Accord / 20EL / 2003 / Gray - KA1189',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 192000,
    'latest_price': 321371,
    'clearance_date': 1617074000,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299663720010.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299676220880.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299710284523.jpg',
      'https://cdn.auctionhousejapan.jp/large/KA1189/637370299737004342.jpg',
      'https://cdn.auctionhousejapan.jp/large/MZ1177/637370300426720416.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Az Wagon / FX / 2004 / Silver - EF1012',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 98000,
    'latest_price': 166827,
    'clearance_date': 1617058600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565273147806.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565260647702.jpg',
      'https://cdn.auctionhousejapan.jp/large/EF1012/637316565267210330.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Atenza Sedan / 25EX / 2008 / Pearl - QO1238',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 235000,
    'latest_price': 324601,
    'clearance_date': 1617065600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707781903020.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707761436820.jpg',
      'https://cdn.auctionhousejapan.jp/large/QO1238/637365707773623953.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15F / 2004 / Red - BZ1014',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 135000,
    'latest_price': 219511,
    'clearance_date': 1617049600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015516507673.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015501976152.jpg',
      'https://cdn.auctionhousejapan.jp/large/BZ1014/637311015509632499.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Mazda Axela / 15S PROACTIVE / 2019 / Silver - XZ1729',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 2621000,
    'latest_price': 2708160,
    'clearance_date': 1617052600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981365362896.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149597025655.jpg',
      'https://cdn.auctionhousejapan.jp/large/NC1693/637408149615425692.jpg',
      'https://cdn.auctionhousejapan.jp/large/RG1651/637413981343018936.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Peugeot 208 / PREMIUM / 2014 / Actual Vehicle - JN1726',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 1138000,
    'latest_price': 1216642,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442897812675.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442832500419.jpg',
      'https://cdn.auctionhousejapan.jp/large/SG1403/637375442851562814.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / 1.4 TFSI / 2010 / White - MY1172',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 341000,
    'latest_price': 383000,
    'clearance_date': 1617042600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064953635736.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064929257946.jpg',
      'https://cdn.auctionhousejapan.jp/large/MY1172/637379064939571344.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Audi A3 / SPORTBACK 1.4 TFSI / 2009 / Silver - AA1194',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 368000,
    'latest_price': 450278,
    'clearance_date': 1617082600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398380764241.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398345293932.jpg',
      'https://cdn.auctionhousejapan.jp/large/AA1194/637370398370763159.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'Nissan March / 12C V SELECTION / 2005 / Actual Vehicle - EV1294',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 110000,
    'latest_price': 185007,
    'clearance_date': 1617092600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171255699102.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171229299297.jpg',
      'https://cdn.auctionhousejapan.jp/large/EV1294/637367171242733481.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 3 Series / 318i TOURING / 2005 / Black - OV1183',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 181000,
    'latest_price': 262603,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160041695508.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160062946633.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160073103340.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160082791084.jpg',
      'https://cdn.auctionhousejapan.jp/large/OV1183/637371160102010873.jpg'
    ],
    'created_date': '1615660200'
  },
  {
    'title': 'BMW 1 Series / 116I / 2007 / White - FH1101',
    'description': 'The auctioneer is there to sell cars for as high a price as possible – the auction house earns a percentage commission on each car sold. They will invite bids on individual cars from the audience and while bids tend to start low, they can be placed and increase at staggering speed.',
    'base_price': 191000,
    'latest_price': 212000,
    'clearance_date': 1617062600,
    'images': [
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726245176457.jpg',
      'https://cdn.auctionhousejapan.jp/large/FH1101/637300726300759682.jpg'
    ],
    'created_date': '1615660200'
  },

];



// {
// 'title': '',
// 'description': '',
// 'base_price': 0,
// 'latest_price': 0,
// 'clearance_date': 1617042600,
// 'images': [
// '',
// '',
// '',
// '',
// ''
// ],
// 'created_date': '1615660200'
// },