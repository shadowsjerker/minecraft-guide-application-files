import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


Window {
    visible: true
    width: 432
    maximumWidth: width
    minimumWidth: width
    height: 768
    maximumHeight: height
    minimumHeight: height
    title: qsTr("Hello World")

    //properties
    property var items: ["Planks" , "stick" , "torch" , "workbench" , "chest" , "furnace" , "ladder" , "fence" , "boat" , "wooden slabs" , "stone slabs" , "sign" , "doors" , "painting" , "bed" , "wood" , "pickaxes" , "shovels" , "axe" , "hoes" , "fishing rod"  , "flint and steel" , "shears" , "bucket" , "clock" , "compass" , "map" , "shulker box" , "paper" , "book" , "book and quill" , "iron bars" , " nether brick fence" , "gold ingot" , "eye of ender" , "enchantment table" , "fire charge" , "ender chest" , "beacon" , "anvil" , " flower pot" , "item frame" , "carrot on a stick" , "warped fungus on a stick" , "fire work rocket" , " fire work star" , "lead" , "carpets" , "glass panes" , "lead her" , "banner" , "armor stand" , "end rod" , "end crystal" , "iron nugget" , "concrete powder" , "campfire" , "soul campfire" , "scaffolding" , "barrel" , "blast furnace" , "smoker" , "cartography table" , "composter" , "fletching table" , "smithing table" , "stonecutter" , "grindstone" , "lanterns" , "lectern" , "loom" , "beehive" , "chain" , "netherite ingot" , "soul torch" , "respawn anchors" , "loadstone" , "helmets" , "chestplates" , "leggings" , "boots" , "swords" , "bow" , "crossbow" , "arrow" , "horse armor" , "shield" , "spectral arrow" , "tipped arrow" , "conduit" , "turtle shell" , "glass bottle" , "cauldron" , "brewing stand" , " glistering melon" , "blaze powder" , "fermented spider eye" , "magma cream" , "pressure plates" , "weighted pressure plates" , "lever" , "buttons" , "trapdoor" , "piston" , "sticky piston" , "fence gate" , "Redstone repeater" , "dispenser" , "jukebox" , "minecart" , "powered minecart" , "minecart with TNT" , "storage minecart" , " track" , "powered rail" , "detector rail" , "activator rail" , "Redstone torch" , "Redstone lamp" , "tripwire hook" , "daylight sensor" , "dropper" , "hopper" , "Redstone comparator" , "trapped chest" , "iron trapdoor" , "observer" , "target" , "glow stone" , " snow block" , "stone brick" , "brick" , "sandstone" , "smooth sandstone" , "decorative sandstone" , "gold block" , "diamond block" , "iron block" , "lapis lazuli block" , "emerald block" , "coal block" , "wool block" , "bookshelf" , "note block" , "clay block" , "jack lantern" , "TNT" , "wooden stairs" , "stone stairs" , "cobblestone walls" , "block of Redstone" , "nether brick" , "red nether brick" , "chiseled nether brick" , "nether wart block" , "block of quartz" , "chiseled quarts block" , "pillar quarts block" , "quartz brick" , "hay bale" , "stained clay" , "stained glass" , "granite" , "andesite" , "diorite" , "polished granite" , "polished andesite" , "polished diorite" , "prismarine" , "prismarine bricks" , "dark prismarine" , "sea lantern" , "coarse dirt" , "slime block" , "moss stone" , "mossy stone brick" , "chiseled stone brick" , "red sandstone" , "smooth red sandstone" , "chiseled red sand" , "purpur block" , "purpur pillar" , "magma block" , "bone block" , "dried kelp block" , "packed ice" , "blue ice" , "honey block" , "Honeycomb block" , "stripped wood" , "polished basait" , "polished black stone" , "chiseled polished black stone" , "polished black stone brick" , "block of netherite" , "cake" , "bread" , "cookie" , "bowl" , "mushroom stew" , "golden apple" , "golden carrot" , "Pumkin seeds" , "melon seeds" , "melon block" , "sugar" , "pumkin pie" , "rabbit stew" , "suspicious stew"]

    property var itemsP: ["تخته چوب" , "چوب" , " کبریت" , "میز کار" , "صندوق" , "کوره" , "نردبان" , "حصار" , "قایق" , "اسلب چوبی" , "اسلب سنگی" , "تابلو" , "در" , "نقاشی" , "تخت خواب" , "چوبی" , "کلنگ ها" , "بیل ها" , "تبر ها" , "شخم زن" , "قلاب ماهی گیری" ,"سنگ چخماق و استیل" , "قیچی" , "سطل" , "ساعت" , "قطب نما" , "نقشه" , "شالکر باکس" , "کاغذ" , "کتاب" , "کتاب و جوهر" , "میله آهنی" , "حصار سنگی جهنم" , "شمش طلا" , "چشم اندر" , "میز جادو" , "سنگ آتش" , "صندوق آخرت" , "بیکنی" , "انویل" , "گلدان" , "قالب آیتم" , "هویج روی قلاب" , "قارچ ناب خورده روی قلاب" , "فشفشه" , "فشفشه ستاره ای" , "طناب" , "کف پوش" , "صفحه شیشه ای" , "طناب. " , "پرچم" , "استند زره" , "میله اند " , "اند کریستال" , "تکه های آهن" , "ریل قدرتی" , "آتش اردوگاه" , "روح آتش اردوگاه" , "داربست" , "بشکه" , "کوره ذوب آهن" , "باربیکیو" , "میز نقشه برداری" , "کامپاستر" , "میز فلتچین" , "اسمیتینگ تیبل" , "برش دهنده سنگ" , "سنگ خرد کن" , "فانوس" , "میز سخنرانی" , "میز بافندگی" , "کندوی عسل" , "زنجیر" , "شمش ندرایت" , "مشعل روح" , "احیا کننده" , "سنگ راهنما" , "کلاه خودها" , "زره ها" , "شلوار ها" , "چکمه ها" , "شمشیر ها" , "کمان" , "کراس بو" , "تیر" , "زره اسب" , "سپهر" , "تیر نشانگر" , "تیر جادویی" , "مجرا" , "پوسته اعتماد" , "بطری شیشه ای" , "دیگ" , "استند دم کردن" , "هندوانه طلا" , "پودر بلیز" , "چشم عنکبوت تبخیر شده" , "کرم ماگما" , "صفحات فشار" , "صفحات فشار دار" , "اهرم" , "دکمه" , "در تله" , "پیستون" , "استیکی پیستون" , "در حصار" , "رد استون ریپیدر" , "توضیع کننده" , "جعبه موسیقی" , "ماین کارت" , "ماین کارت با فر" , "ماین کارت با بمب" , "ماین کارت با صندوق" , "ریل" , "پاور ریل" , "ریل رد یاب" , "ریل فعال کننده" , "مشعل رد استون" , "لامپ رد استون" , "قلاب سه سیم" , "سنسور تشخیص روز" , "اندازنده" , "قیف" , "ارسال کننده سیگنال رد استون" , "صندوق تله" , "در تله آهنی" , "نظاره گر" , "هدف" , "سنگ درخشان" , "بلاک برف" , "سنگ آجر" , "آجر" , "سنگ ماسه" , "سنگ ماسه صاف" , "سنگ ماسه تزیینی" , "بلاک طلا" , "بلاک الماس" , "بلاک آهن" , "بلاک لپیز" , "بلاک زمرد" , "بلاک زغال" , "بلاک پشم" , "قفسه کتاب" , "بلاک نوت" , "بلاک سفالی" , "فانوس کدویی" , "بمب" , "پله چوبی" , "پله سنگی" , "دیوار سنگی" , "بلاک رد استون" , "بلاک ندر" , "بلاک قرمز ندر" , "بلاک ندر قلم زنی شده" , "بلاک وارت" , "کوآرتز" , "بلاک کوآرتز قلم زنی شده" , "ستون کوآرتز" , "آجر کوآرتز" , "دسته گندم" , "ماسه سنگ صاف" , "شیشه رنگ شده" , "گرانیت" , "اند استیت" , "دیورایت" , "گرانیت صیقل خورده" , "اند استیت صیقل داده شده" , "دیوریت صیقل داده شده" , "منشور" , "آجر منشور" , "منشور تیره" , "فانوس دریایی" , "خاک درشت" , "بلاک اسلایم" , "سنگ خزه" , "آجر سنگی خزه ای" , "آجر سنگی قلم زنی شده" , "سنگ ماسه قرمز" , "سنگ ماسه قرمز صاف" , "سنگ ماسه قرمز قلم زنی شده" , "بلاک بنفش" , "صدف بنفش" , "بلاک ماگما" , "بلاک استخوان" , "بلاک کلپ بخته" , "دسته یخ" , "یخ آبی" , "بلاک عسل" , "بلاک لانه زنبوری" , "چوب پوست کنده" , "باسیت صیقل داده شده" , "سنگ سیاه صیقل داده شده" , "سنگ سیاه صیقلی قلم زنی شده" , "آجر سنگ سیاه " , "بلاک ندرایت" , "کیک" , "نان" , "شیرنی" , "ماسه" , "سوپ قارچ" , "سیب طلا" , "هویج طلا" , "دانه کدو" , "دانه هندوانه" , "بلاک هندوانه" , "شکر" , "پای کدو" , "سوپ خرگوش" , "سوپ دید در شب" , "" , ""]

    property var shortExplanation: ["","sdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhldsknlgkdgssdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhldsknlgkdgssdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhldsknlgkdgssdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhldsknlgkdgssdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhldsknlgkdgssdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhldsknlgkdgssdjlkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", ""]

    property string searchFound1: ""
    property string searchFound2: ""
    property string searchFound3: ""
    property string searchInputDisplay1: ""
    property string searchInputDisplay2: ""
    property string searchInputDisplay3: ""

    property int findPhoto1 : 0
    property int findPhoto2 : 0
    property int findPhoto3 : 0
    property string photoAddress1: ""
    property string photoAddress2: ""
    property string photoAddress3: ""

    property int findShortExplanation1 : 0
    property string findShortExplanationString1: shortExplanation[findShortExplanation1]
    property int findShortExplanation2 : 0
    property int findShortExplanation3 : 0

    function photoConfiguration1(){
        photoAddress1 = ""

        switch(findPhoto1){
        case 1: photoAddress1 = "Item/1.gif"; break;
        case 2: photoAddress1 = "Item/2.png"; break;
        case 3: photoAddress1 = "Item/3.png"; break;
        case 4: photoAddress1 = "Item/4.png"; break;
        case 5: photoAddress1 = "Item/5.png"; break;
        case 6: photoAddress1 = "Item/6.gif"; break;
        case 7: photoAddress1 = "Item/7.png"; break;
        case 8: photoAddress1 = "Item/8.gif"; break;
        case 9: photoAddress1 = "Item/9.png"; break;
        case 10: photoAddress1 = "Item/10.gif"; break;
        case 11: photoAddress1 = "Item/11.gif"; break;
        case 12: photoAddress1 = "Item/12.png"; break;
        case 13: photoAddress1 = "Item/13.gif"; break;
        case 14: photoAddress1 = "Item/14.png"; break;
        case 15: photoAddress1 = "Item/15.png"; break;
        case 16: photoAddress1 = "Item/16.png"; break;
        case 17: photoAddress1 = "Item/17.gif"; break;
        case 18: photoAddress1 = "Item/18.gif"; break;
        case 19: photoAddress1 = "Item/19.gif"; break;
        case 20: photoAddress1 = "Item/20.gif"; break;
        case 21: photoAddress1 = "Item/21.png"; break;
        case 22: photoAddress1 = "Item/22.png"; break;
        case 23: photoAddress1 = "Item/23.png"; break;
        case 24: photoAddress1 = "Item/24.png"; break;
        case 25: photoAddress1 = "Item/25.png"; break;
        case 26: photoAddress1 = "Item/26.png"; break;
        case 27: photoAddress1 = "Item/27.png"; break;
        case 28: photoAddress1 = "Item/28.png"; break;
        case 29: photoAddress1 = "Item/29.png"; break;
        case 30: photoAddress1 = "Item/30.png"; break;
        case 31: photoAddress1 = "Item/31.png"; break;
        case 32: photoAddress1 = "Item/32.png"; break;
        case 33: photoAddress1 = "Item/33.png"; break;
        case 34: photoAddress1 = "Item/34.png"; break;
        case 35: photoAddress1 = "Item/35.png"; break;
        case 36: photoAddress1 = "Item/36.png"; break;
        case 37: photoAddress1 = "Item/37.png"; break;
        case 38: photoAddress1 = "Item/38.png"; break;
        case 39: photoAddress1 = "Item/39.png"; break;
        case 40: photoAddress1 = "Item/40.png"; break;
        case 41: photoAddress1 = "Item/41.png"; break;
        case 42: photoAddress1 = "Item/42.png"; break;
        case 43: photoAddress1 = "Item/43.png"; break;
        case 44: photoAddress1 = "Item/44.png"; break;
        case 45: photoAddress1 = "Item/45.gif"; break;
        case 46: photoAddress1 = "Item/46.png"; break;
        case 47: photoAddress1 = "Item/47.gif"; break;
        case 48: photoAddress1 = "Item/48.gif"; break;
        case 49: photoAddress1 = "Item/49.png"; break;
        case 50: photoAddress1 = "Item/50.gif"; break;
        case 51: photoAddress1 = "Item/51.png"; break;
        case 52: photoAddress1 = "Item/52.png"; break;
        case 53: photoAddress1 = "Item/53.png"; break;
        case 54: photoAddress1 = "Item/54.png"; break;
        case 55: photoAddress1 = "Item/55.png"; break;
        case 56: photoAddress1 = "Item/56.png"; break;
        case 57: photoAddress1 = "Item/57.png"; break;
        case 58: photoAddress1 = "Item/58.gif"; break;
        case 59: photoAddress1 = "Item/59.png"; break;
        case 60: photoAddress1 = "Item/60.png"; break;
        case 61: photoAddress1 = "Item/61.png"; break;
        case 62: photoAddress1 = "Item/62.png"; break;
        case 63: photoAddress1 = "Item/63.png"; break;
        case 64: photoAddress1 = "Item/64.png"; break;
        case 65: photoAddress1 = "Item/65.png"; break;
        case 66: photoAddress1 = "Item/66.png"; break;
        case 67: photoAddress1 = "Item/67.png"; break;
        case 68: photoAddress1 = "Item/68.png"; break;
        case 69: photoAddress1 = "Item/69.gif"; break;
        case 70: photoAddress1 = "Item/70.png"; break;
        case 71: photoAddress1 = "Item/71.png"; break;
        case 72: photoAddress1 = "Item/72.png"; break;
        case 73: photoAddress1 = "Item/73.png"; break;
        case 74: photoAddress1 = "Item/74.png"; break;
        case 75: photoAddress1 = "Item/75.gif"; break;
        case 76: photoAddress1 = "Item/76.png"; break;
        case 77: photoAddress1 = "Item/77.png"; break;
        case 78: photoAddress1 = "Item/78.gif"; break;
        case 79: photoAddress1 = "Item/79.gif"; break;
        case 80: photoAddress1 = "Item/80.gif"; break;
        case 81: photoAddress1 = "Item/81.gif"; break;
        case 82: photoAddress1 = "Item/82.gif"; break;
        case 83: photoAddress1 = "Item/83.png"; break;
        case 84: photoAddress1 = "Item/84.png"; break;
        case 85: photoAddress1 = "Item/85.png"; break;
        case 86: photoAddress1 = "Item/86.png"; break;
        case 87: photoAddress1 = "Item/87.png"; break;
        case 88: photoAddress1 = "Item/88.png"; break;
        case 89: photoAddress1 = "Item/89.png"; break;
        case 90: photoAddress1 = "Item/90.png"; break;
        case 91: photoAddress1 = "Item/91.png"; break;
        case 92: photoAddress1 = "Item/92.png"; break;
        case 93: photoAddress1 = "Item/93.png"; break;
        case 94: photoAddress1 = "Item/94.png"; break;
        case 95: photoAddress1 = "Item/95.png"; break;
        case 96: photoAddress1 = "Item/96.png"; break;
        case 97: photoAddress1 = "Item/97.png"; break;
        case 98: photoAddress1 = "Item/98.png"; break;
        case 99: photoAddress1 = "Item/99.gif"; break;
        case 100: photoAddress1 = "Item/100.gif"; break;
        case 101: photoAddress1 = "Item/101.png"; break;
        case 102: photoAddress1 = "Item/102.gif"; break;
        case 103: photoAddress1 = "Item/103.png"; break;
        case 104: photoAddress1 = "Item/104.png"; break;
        case 105: photoAddress1 = "Item/105.png"; break;
        case 106: photoAddress1 = "Item/106.gif"; break;
        case 107: photoAddress1 = "Item/107.png"; break;
        case 108: photoAddress1 = "Item/108.png"; break;
        case 109: photoAddress1 = "Item/109.png"; break;
        case 110: photoAddress1 = "Item/110.png"; break;
        case 111: photoAddress1 = "Item/111.png"; break;
        case 112: photoAddress1 = "Item/112.png"; break;
        case 113: photoAddress1 = "Item/113.png"; break;
        case 114: photoAddress1 = "Item/114.png"; break;
        case 115: photoAddress1 = "Item/115.png"; break;
        case 116: photoAddress1 = "Item/116.png"; break;
        case 117: photoAddress1 = "Item/117.png"; break;
        case 118: photoAddress1 = "Item/118.png"; break;
        case 119: photoAddress1 = "Item/119.png"; break;
        case 120: photoAddress1 = "Item/120.png"; break;
        case 121: photoAddress1 = "Item/121.png"; break;
        case 122: photoAddress1 = "Item/122.png"; break;
        case 123: photoAddress1 = "Item/123.png"; break;
        case 124: photoAddress1 = "Item/124.png"; break;
        case 125: photoAddress1 = "Item/125.png"; break;
        case 126: photoAddress1 = "Item/126.png"; break;
        case 127: photoAddress1 = "Item/127.png"; break;
        case 128: photoAddress1 = "Item/128.png"; break;
        case 129: photoAddress1 = "Item/129.png"; break;
        case 130: photoAddress1 = "Item/130.png"; break;
        case 131: photoAddress1 = "Item/131.png"; break;
        case 132: photoAddress1 = "Item/132.png"; break;
        case 133: photoAddress1 = "Item/133.png"; break;
        case 134: photoAddress1 = "Item/134.png"; break;
        case 135: photoAddress1 = "Item/135.png"; break;
        case 136: photoAddress1 = "Item/136.png"; break;
        case 137: photoAddress1 = "Item/137.png"; break;
        case 139: photoAddress1 = "Item/139.png"; break;
        case 140: photoAddress1 = "Item/140.png"; break;
        case 141: photoAddress1 = "Item/141.png"; break;
        case 142: photoAddress1 = "Item/142.png"; break;
        case 143: photoAddress1 = "Item/143.png"; break;
        case 144: photoAddress1 = "Item/144.png"; break;
        case 145: photoAddress1 = "Item/145.png"; break;
        case 146: photoAddress1 = "Item/146.png"; break;
        case 147: photoAddress1 = "Item/147.png"; break;
        case 148: photoAddress1 = "Item/148.gif"; break;
        case 149: photoAddress1 = "Item/149.gif"; break;
        case 150: photoAddress1 = "Item/150.gif"; break;
        case 151: photoAddress1 = "Item/151.png"; break;
        case 152: photoAddress1 = "Item/152.png"; break;
        case 153: photoAddress1 = "Item/153.png"; break;
        case 154: photoAddress1 = "Item/154.png"; break;
        case 155: photoAddress1 = "Item/155.png"; break;
        case 156: photoAddress1 = "Item/156.png"; break;
        case 157: photoAddress1 = "Item/157.png"; break;
        case 158: photoAddress1 = "Item/158.png"; break;
        case 159: photoAddress1 = "Item/159.png"; break;
        case 160: photoAddress1 = "Item/160.png"; break;
        case 161: photoAddress1 = "Item/161.gif"; break;
        case 162: photoAddress1 = "Item/162.gif"; break;
        case 163: photoAddress1 = "Item/163.png"; break;
        case 164: photoAddress1 = "Item/164.png"; break;
        case 165: photoAddress1 = "Item/165.png"; break;
        case 166: photoAddress1 = "Item/166.png"; break;
        case 167: photoAddress1 = "Item/167.png"; break;
        case 168: photoAddress1 = "Item/168.png"; break;
        case 169: photoAddress1 = "Item/169.png"; break;
        case 170: photoAddress1 = "Item/170.png"; break;
        case 171: photoAddress1 = "Item/171.png"; break;
        case 172: photoAddress1 = "Item/172.png"; break;
        case 173: photoAddress1 = "Item/173.png"; break;
        case 174: photoAddress1 = "Item/174.png"; break;
        case 175: photoAddress1 = "Item/175.png"; break;
        case 176: photoAddress1 = "Item/176.png"; break;
        case 177: photoAddress1 = "Item/177.png"; break;
        case 178: photoAddress1 = "Item/178.png"; break;
        case 179: photoAddress1 = "Item/179.png"; break;
        case 180: photoAddress1 = "Item/180.png"; break;
        case 181: photoAddress1 = "Item/181.png"; break;
        case 182: photoAddress1 = "Item/182.png"; break;
        case 183: photoAddress1 = "Item/183.png"; break;
        case 184: photoAddress1 = "Item/184.png"; break;
        case 185: photoAddress1 = "Item/185.png"; break;
        case 186: photoAddress1 = "Item/186.png"; break;
        case 187: photoAddress1 = "Item/187.png"; break;
        case 188: photoAddress1 = "Item/188.png"; break;
        case 189: photoAddress1 = "Item/189.png"; break;
        case 190: photoAddress1 = "Item/190.png"; break;
        case 191: photoAddress1 = "Item/191.png"; break;
        case 192: photoAddress1 = "Item/192.png"; break;
        case 193: photoAddress1 = "Item/193.png"; break;
        case 194: photoAddress1 = "Item/194.png"; break;
        case 195: photoAddress1 = "Item/195.png"; break;
        case 196: photoAddress1 = "Item/196.png"; break;
        case 197: photoAddress1 = "Item/197.png"; break;
        case 198: photoAddress1 = "Item/198.png"; break;
        case 199: photoAddress1 = "Item/199.png"; break;
        case 200: photoAddress1 = "Item/200.png"; break;
        case 201: photoAddress1 = "Item/201.png"; break;
        case 202: photoAddress1 = "Item/202.png"; break;
        case 203: photoAddress1 = "Item/203.png"; break;
        case 204: photoAddress1 = "Item/204.png"; break;
        case 205: photoAddress1 = "Item/205.png"; break;
        case 206: photoAddress1 = "Item/206.png"; break;
        case 207: photoAddress1 = "Item/207.png"; break;
        case 208: photoAddress1 = "Item/208.png"; break;
        case 209: photoAddress1 = "Item/209.png"; break;




        }

    }
    function photoConfiguration2(){
        photoAddress2 = ""

        switch(findPhoto2){
        case 1: photoAddress2 = "Item/1.gif"; break;
        case 2: photoAddress2 = "Item/2.png"; break;
        case 3: photoAddress2 = "Item/3.png"; break;
        case 4: photoAddress2 = "Item/4.png"; break;
        case 5: photoAddress2 = "Item/5.png"; break;
        case 6: photoAddress2 = "Item/6.gif"; break;
        case 7: photoAddress2 = "Item/7.png"; break;
        case 8: photoAddress2 = "Item/8.gif"; break;
        case 9: photoAddress2 = "Item/9.png"; break;
        case 10: photoAddress2 = "Item/10.gif"; break;
        case 11: photoAddress2 = "Item/11.gif"; break;
        case 12: photoAddress2 = "Item/12.png"; break;
        case 13: photoAddress2 = "Item/13.gif"; break;
        case 14: photoAddress2 = "Item/14.png"; break;
        case 15: photoAddress2 = "Item/15.png"; break;
        case 16: photoAddress2 = "Item/16.png"; break;
        case 17: photoAddress2 = "Item/17.gif"; break;
        case 18: photoAddress2 = "Item/18.gif"; break;
        case 19: photoAddress2 = "Item/19.gif"; break;
        case 20: photoAddress2 = "Item/20.gif"; break;
        case 21: photoAddress2 = "Item/21.png"; break;
        case 22: photoAddress2 = "Item/22.png"; break;
        case 23: photoAddress2 = "Item/23.png"; break;
        case 24: photoAddress2 = "Item/24.png"; break;
        case 25: photoAddress2 = "Item/25.png"; break;
        case 26: photoAddress2 = "Item/26.png"; break;
        case 27: photoAddress2 = "Item/27.png"; break;
        case 28: photoAddress2 = "Item/28.png"; break;
        case 29: photoAddress2 = "Item/29.png"; break;
        case 30: photoAddress2 = "Item/30.png"; break;
        case 31: photoAddress2 = "Item/31.png"; break;
        case 32: photoAddress2 = "Item/32.png"; break;
        case 33: photoAddress2 = "Item/33.png"; break;
        case 34: photoAddress2 = "Item/34.png"; break;
        case 35: photoAddress2 = "Item/35.png"; break;
        case 36: photoAddress2 = "Item/36.png"; break;
        case 37: photoAddress2 = "Item/37.png"; break;
        case 38: photoAddress2 = "Item/38.png"; break;
        case 39: photoAddress2 = "Item/39.png"; break;
        case 40: photoAddress2 = "Item/40.png"; break;
        case 41: photoAddress2 = "Item/41.png"; break;
        case 42: photoAddress2 = "Item/42.png"; break;
        case 43: photoAddress2 = "Item/43.png"; break;
        case 44: photoAddress2 = "Item/44.png"; break;
        case 45: photoAddress2 = "Item/45.gif"; break;
        case 46: photoAddress2 = "Item/46.png"; break;
        case 47: photoAddress2 = "Item/47.gif"; break;
        case 48: photoAddress2 = "Item/48.gif"; break;
        case 49: photoAddress2 = "Item/49.png"; break;
        case 50: photoAddress2 = "Item/50.gif"; break;
        case 51: photoAddress2 = "Item/51.png"; break;
        case 52: photoAddress2 = "Item/52.png"; break;
        case 53: photoAddress2 = "Item/53.png"; break;
        case 54: photoAddress2 = "Item/54.png"; break;
        case 55: photoAddress2 = "Item/55.png"; break;
        case 56: photoAddress2 = "Item/56.png"; break;
        case 57: photoAddress2 = "Item/57.png"; break;
        case 58: photoAddress2 = "Item/58.gif"; break;
        case 59: photoAddress2 = "Item/59.png"; break;
        case 60: photoAddress2 = "Item/60.png"; break;
        case 61: photoAddress2 = "Item/61.png"; break;
        case 62: photoAddress2 = "Item/62.png"; break;
        case 63: photoAddress2 = "Item/63.png"; break;
        case 64: photoAddress2 = "Item/64.png"; break;
        case 65: photoAddress2 = "Item/65.png"; break;
        case 66: photoAddress2 = "Item/66.png"; break;
        case 67: photoAddress2 = "Item/67.png"; break;
        case 68: photoAddress2 = "Item/68.png"; break;
        case 69: photoAddress2 = "Item/69.gif"; break;
        case 70: photoAddress2 = "Item/70.png"; break;
        case 71: photoAddress2 = "Item/71.png"; break;
        case 72: photoAddress2 = "Item/72.png"; break;
        case 73: photoAddress2 = "Item/73.png"; break;
        case 74: photoAddress2 = "Item/74.png"; break;
        case 75: photoAddress2 = "Item/75.gif"; break;
        case 76: photoAddress2 = "Item/76.png"; break;
        case 77: photoAddress2 = "Item/77.png"; break;
        case 78: photoAddress2 = "Item/78.gif"; break;
        case 79: photoAddress2 = "Item/79.gif"; break;
        case 80: photoAddress2 = "Item/80.gif"; break;
        case 81: photoAddress2 = "Item/81.gif"; break;
        case 82: photoAddress2 = "Item/82.gif"; break;
        case 83: photoAddress2 = "Item/83.png"; break;
        case 84: photoAddress2 = "Item/84.png"; break;
        case 85: photoAddress2 = "Item/85.png"; break;
        case 86: photoAddress2 = "Item/86.png"; break;
        case 87: photoAddress2 = "Item/87.png"; break;
        case 88: photoAddress2 = "Item/88.png"; break;
        case 89: photoAddress2 = "Item/89.png"; break;
        case 90: photoAddress2 = "Item/90.png"; break;
        case 91: photoAddress2 = "Item/91.png"; break;
        case 92: photoAddress2 = "Item/92.png"; break;
        case 93: photoAddress2 = "Item/93.png"; break;
        case 94: photoAddress2 = "Item/94.png"; break;
        case 95: photoAddress2 = "Item/95.png"; break;
        case 96: photoAddress2 = "Item/96.png"; break;
        case 97: photoAddress2 = "Item/97.png"; break;
        case 98: photoAddress2 = "Item/98.png"; break;
        case 99: photoAddress2 = "Item/99.gif"; break;
        case 100: photoAddress2 = "Item/100.gif"; break;
        case 101: photoAddress2 = "Item/101.png"; break;
        case 102: photoAddress2 = "Item/102.gif"; break;
        case 103: photoAddress2 = "Item/103.png"; break;
        case 104: photoAddress2 = "Item/104.png"; break;
        case 105: photoAddress2 = "Item/105.png"; break;
        case 106: photoAddress2 = "Item/106.gif"; break;
        case 107: photoAddress2 = "Item/107.png"; break;
        case 108: photoAddress2 = "Item/108.png"; break;
        case 109: photoAddress2 = "Item/109.png"; break;
        case 110: photoAddress2 = "Item/110.png"; break;
        case 111: photoAddress2 = "Item/111.png"; break;
        case 112: photoAddress2 = "Item/112.png"; break;
        case 113: photoAddress2 = "Item/113.png"; break;
        case 114: photoAddress2 = "Item/114.png"; break;
        case 115: photoAddress2 = "Item/115.png"; break;
        case 116: photoAddress2 = "Item/116.png"; break;
        case 117: photoAddress2 = "Item/117.png"; break;
        case 118: photoAddress2 = "Item/118.png"; break;
        case 119: photoAddress2 = "Item/119.png"; break;
        case 120: photoAddress2 = "Item/120.png"; break;
        case 121: photoAddress2 = "Item/121.png"; break;
        case 122: photoAddress2 = "Item/122.png"; break;
        case 123: photoAddress2 = "Item/123.png"; break;
        case 124: photoAddress2 = "Item/124.png"; break;
        case 125: photoAddress2 = "Item/125.png"; break;
        case 126: photoAddress2 = "Item/126.png"; break;
        case 127: photoAddress2 = "Item/127.png"; break;
        case 128: photoAddress2 = "Item/128.png"; break;
        case 129: photoAddress2 = "Item/129.png"; break;
        case 130: photoAddress2 = "Item/130.png"; break;
        case 131: photoAddress2 = "Item/131.png"; break;
        case 132: photoAddress2 = "Item/132.png"; break;
        case 133: photoAddress2 = "Item/133.png"; break;
        case 134: photoAddress2 = "Item/134.png"; break;
        case 135: photoAddress2 = "Item/135.png"; break;
        case 136: photoAddress2 = "Item/136.png"; break;
        case 137: photoAddress2 = "Item/137.png"; break;
        case 139: photoAddress2 = "Item/139.png"; break;
        case 140: photoAddress2 = "Item/140.png"; break;
        case 141: photoAddress2 = "Item/141.png"; break;
        case 142: photoAddress2 = "Item/142.png"; break;
        case 143: photoAddress2 = "Item/143.png"; break;
        case 144: photoAddress2 = "Item/144.png"; break;
        case 145: photoAddress2 = "Item/145.png"; break;
        case 146: photoAddress2 = "Item/146.png"; break;
        case 147: photoAddress2 = "Item/147.png"; break;
        case 148: photoAddress2 = "Item/148.gif"; break;
        case 149: photoAddress2 = "Item/149.gif"; break;
        case 150: photoAddress2 = "Item/150.gif"; break;
        case 151: photoAddress2 = "Item/151.png"; break;
        case 152: photoAddress2 = "Item/152.png"; break;
        case 153: photoAddress2 = "Item/153.png"; break;
        case 154: photoAddress2 = "Item/154.png"; break;
        case 155: photoAddress2 = "Item/155.png"; break;
        case 156: photoAddress2 = "Item/156.png"; break;
        case 157: photoAddress2 = "Item/157.png"; break;
        case 158: photoAddress2 = "Item/158.png"; break;
        case 159: photoAddress2 = "Item/159.png"; break;
        case 160: photoAddress2 = "Item/160.png"; break;
        case 161: photoAddress2 = "Item/161.gif"; break;
        case 162: photoAddress2 = "Item/162.gif"; break;
        case 163: photoAddress2 = "Item/163.png"; break;
        case 164: photoAddress2 = "Item/164.png"; break;
        case 165: photoAddress2 = "Item/165.png"; break;
        case 166: photoAddress2 = "Item/166.png"; break;
        case 167: photoAddress2 = "Item/167.png"; break;
        case 168: photoAddress2 = "Item/168.png"; break;
        case 169: photoAddress2 = "Item/169.png"; break;
        case 170: photoAddress2 = "Item/170.png"; break;
        case 171: photoAddress2 = "Item/171.png"; break;
        case 172: photoAddress2 = "Item/172.png"; break;
        case 173: photoAddress2 = "Item/173.png"; break;
        case 174: photoAddress2 = "Item/174.png"; break;
        case 175: photoAddress2 = "Item/175.png"; break;
        case 176: photoAddress2 = "Item/176.png"; break;
        case 177: photoAddress2 = "Item/177.png"; break;
        case 178: photoAddress2 = "Item/178.png"; break;
        case 179: photoAddress2 = "Item/179.png"; break;
        case 180: photoAddress2 = "Item/180.png"; break;
        case 181: photoAddress2 = "Item/181.png"; break;
        case 182: photoAddress2 = "Item/182.png"; break;
        case 183: photoAddress2 = "Item/183.png"; break;
        case 184: photoAddress2 = "Item/184.png"; break;
        case 185: photoAddress2 = "Item/185.png"; break;
        case 186: photoAddress2 = "Item/186.png"; break;
        case 187: photoAddress2 = "Item/187.png"; break;
        case 188: photoAddress2 = "Item/188.png"; break;
        case 189: photoAddress2 = "Item/189.png"; break;
        case 190: photoAddress2 = "Item/190.png"; break;
        case 191: photoAddress2 = "Item/191.png"; break;
        case 192: photoAddress2 = "Item/192.png"; break;
        case 193: photoAddress2 = "Item/193.png"; break;
        case 194: photoAddress2 = "Item/194.png"; break;
        case 195: photoAddress2 = "Item/195.png"; break;
        case 196: photoAddress2 = "Item/196.png"; break;
        case 197: photoAddress2 = "Item/197.png"; break;
        case 198: photoAddress2 = "Item/198.png"; break;
        case 199: photoAddress2 = "Item/199.png"; break;
        case 200: photoAddress2 = "Item/200.png"; break;
        case 201: photoAddress2 = "Item/201.png"; break;
        case 202: photoAddress2 = "Item/202.png"; break;
        case 203: photoAddress2 = "Item/203.png"; break;
        case 204: photoAddress2 = "Item/204.png"; break;
        case 205: photoAddress2 = "Item/205.png"; break;
        case 206: photoAddress2 = "Item/206.png"; break;
        case 207: photoAddress2 = "Item/207.png"; break;
        case 208: photoAddress2 = "Item/208.png"; break;
        case 209: photoAddress2 = "Item/209.png"; break;

        }
    }
    function photoConfiguration3(){
        photoAddress3 = ""

        switch(findPhoto3){
        case 1: photoAddress3 = "Item/1.gif"; break;
        case 2: photoAddress3 = "Item/2.png"; break;
        case 3: photoAddress3 = "Item/3.png"; break;
        case 4: photoAddress3 = "Item/4.png"; break;
        case 5: photoAddress3 = "Item/5.png"; break;
        case 6: photoAddress3 = "Item/6.gif"; break;
        case 7: photoAddress3 = "Item/7.png"; break;
        case 8: photoAddress3 = "Item/8.gif"; break;
        case 9: photoAddress3 = "Item/9.png"; break;
        case 10: photoAddress3 = "Item/10.gif"; break;
        case 11: photoAddress3 = "Item/11.gif"; break;
        case 12: photoAddress3 = "Item/12.png"; break;
        case 13: photoAddress3 = "Item/13.gif"; break;
        case 14: photoAddress3 = "Item/14.png"; break;
        case 15: photoAddress3 = "Item/15.png"; break;
        case 16: photoAddress3 = "Item/16.png"; break;
        case 17: photoAddress3 = "Item/17.gif"; break;
        case 18: photoAddress3 = "Item/18.gif"; break;
        case 19: photoAddress3 = "Item/19.gif"; break;
        case 20: photoAddress3 = "Item/20.gif"; break;
        case 21: photoAddress3 = "Item/21.png"; break;
        case 22: photoAddress3 = "Item/22.png"; break;
        case 23: photoAddress3 = "Item/23.png"; break;
        case 24: photoAddress3 = "Item/24.png"; break;
        case 25: photoAddress3 = "Item/25.png"; break;
        case 26: photoAddress3 = "Item/26.png"; break;
        case 27: photoAddress3 = "Item/27.png"; break;
        case 28: photoAddress3 = "Item/28.png"; break;
        case 29: photoAddress3 = "Item/29.png"; break;
        case 30: photoAddress3 = "Item/30.png"; break;
        case 31: photoAddress3 = "Item/31.png"; break;
        case 32: photoAddress3 = "Item/32.png"; break;
        case 33: photoAddress3 = "Item/33.png"; break;
        case 34: photoAddress3 = "Item/34.png"; break;
        case 35: photoAddress3 = "Item/35.png"; break;
        case 36: photoAddress3 = "Item/36.png"; break;
        case 37: photoAddress3 = "Item/37.png"; break;
        case 38: photoAddress3 = "Item/38.png"; break;
        case 39: photoAddress3 = "Item/39.png"; break;
        case 40: photoAddress3 = "Item/40.png"; break;
        case 41: photoAddress3 = "Item/41.png"; break;
        case 42: photoAddress3 = "Item/42.png"; break;
        case 43: photoAddress3 = "Item/43.png"; break;
        case 44: photoAddress3 = "Item/44.png"; break;
        case 45: photoAddress3 = "Item/45.gif"; break;
        case 46: photoAddress3 = "Item/46.png"; break;
        case 47: photoAddress3 = "Item/47.gif"; break;
        case 48: photoAddress3 = "Item/48.gif"; break;
        case 49: photoAddress3 = "Item/49.png"; break;
        case 50: photoAddress3 = "Item/50.gif"; break;
        case 51: photoAddress3 = "Item/51.png"; break;
        case 52: photoAddress3 = "Item/52.png"; break;
        case 53: photoAddress3 = "Item/53.png"; break;
        case 54: photoAddress3 = "Item/54.png"; break;
        case 55: photoAddress3 = "Item/55.png"; break;
        case 56: photoAddress3 = "Item/56.png"; break;
        case 57: photoAddress3 = "Item/57.png"; break;
        case 58: photoAddress3 = "Item/58.gif"; break;
        case 59: photoAddress3 = "Item/59.png"; break;
        case 60: photoAddress3 = "Item/60.png"; break;
        case 61: photoAddress3 = "Item/61.png"; break;
        case 62: photoAddress3 = "Item/62.png"; break;
        case 63: photoAddress3 = "Item/63.png"; break;
        case 64: photoAddress3 = "Item/64.png"; break;
        case 65: photoAddress3 = "Item/65.png"; break;
        case 66: photoAddress3 = "Item/66.png"; break;
        case 67: photoAddress3 = "Item/67.png"; break;
        case 68: photoAddress3 = "Item/68.png"; break;
        case 69: photoAddress3 = "Item/69.gif"; break;
        case 70: photoAddress3 = "Item/70.png"; break;
        case 71: photoAddress3 = "Item/71.png"; break;
        case 72: photoAddress3 = "Item/72.png"; break;
        case 73: photoAddress3 = "Item/73.png"; break;
        case 74: photoAddress3 = "Item/74.png"; break;
        case 75: photoAddress3 = "Item/75.gif"; break;
        case 76: photoAddress3 = "Item/76.png"; break;
        case 77: photoAddress3 = "Item/77.png"; break;
        case 78: photoAddress3 = "Item/78.gif"; break;
        case 79: photoAddress3 = "Item/79.gif"; break;
        case 80: photoAddress3 = "Item/80.gif"; break;
        case 81: photoAddress3 = "Item/81.gif"; break;
        case 82: photoAddress3 = "Item/82.gif"; break;
        case 83: photoAddress3 = "Item/83.png"; break;
        case 84: photoAddress3 = "Item/84.png"; break;
        case 85: photoAddress3 = "Item/85.png"; break;
        case 86: photoAddress3 = "Item/86.png"; break;
        case 87: photoAddress3 = "Item/87.png"; break;
        case 88: photoAddress3 = "Item/88.png"; break;
        case 89: photoAddress3 = "Item/89.png"; break;
        case 90: photoAddress3 = "Item/90.png"; break;
        case 91: photoAddress3 = "Item/91.png"; break;
        case 92: photoAddress3 = "Item/92.png"; break;
        case 93: photoAddress3 = "Item/93.png"; break;
        case 94: photoAddress3 = "Item/94.png"; break;
        case 95: photoAddress3 = "Item/95.png"; break;
        case 96: photoAddress3 = "Item/96.png"; break;
        case 97: photoAddress3 = "Item/97.png"; break;
        case 98: photoAddress3 = "Item/98.png"; break;
        case 99: photoAddress3 = "Item/99.gif"; break;
        case 100: photoAddress3 = "Item/100.gif"; break;
        case 101: photoAddress3 = "Item/101.png"; break;
        case 102: photoAddress3 = "Item/102.gif"; break;
        case 103: photoAddress3 = "Item/103.png"; break;
        case 104: photoAddress3 = "Item/104.png"; break;
        case 105: photoAddress3 = "Item/105.png"; break;
        case 106: photoAddress3 = "Item/106.gif"; break;
        case 107: photoAddress3 = "Item/107.png"; break;
        case 108: photoAddress3 = "Item/108.png"; break;
        case 109: photoAddress3 = "Item/109.png"; break;
        case 110: photoAddress3 = "Item/110.png"; break;
        case 111: photoAddress3 = "Item/111.png"; break;
        case 112: photoAddress3 = "Item/112.png"; break;
        case 113: photoAddress3 = "Item/113.png"; break;
        case 114: photoAddress3 = "Item/114.png"; break;
        case 115: photoAddress3 = "Item/115.png"; break;
        case 116: photoAddress3 = "Item/116.png"; break;
        case 117: photoAddress3 = "Item/117.png"; break;
        case 118: photoAddress3 = "Item/118.png"; break;
        case 119: photoAddress3 = "Item/119.png"; break;
        case 120: photoAddress3 = "Item/120.png"; break;
        case 121: photoAddress3 = "Item/121.png"; break;
        case 122: photoAddress3 = "Item/122.png"; break;
        case 123: photoAddress3 = "Item/123.png"; break;
        case 124: photoAddress3 = "Item/124.png"; break;
        case 125: photoAddress3 = "Item/125.png"; break;
        case 126: photoAddress3 = "Item/126.png"; break;
        case 127: photoAddress3 = "Item/127.png"; break;
        case 128: photoAddress3 = "Item/128.png"; break;
        case 129: photoAddress3 = "Item/129.png"; break;
        case 130: photoAddress3 = "Item/130.png"; break;
        case 131: photoAddress3 = "Item/131.png"; break;
        case 132: photoAddress3 = "Item/132.png"; break;
        case 133: photoAddress3 = "Item/133.png"; break;
        case 134: photoAddress3 = "Item/134.png"; break;
        case 135: photoAddress3 = "Item/135.png"; break;
        case 136: photoAddress3 = "Item/136.png"; break;
        case 137: photoAddress3 = "Item/137.png"; break;
        case 139: photoAddress3 = "Item/139.png"; break;
        case 140: photoAddress3 = "Item/140.png"; break;
        case 141: photoAddress3 = "Item/141.png"; break;
        case 142: photoAddress3 = "Item/142.png"; break;
        case 143: photoAddress3 = "Item/143.png"; break;
        case 144: photoAddress3 = "Item/144.png"; break;
        case 145: photoAddress3 = "Item/145.png"; break;
        case 146: photoAddress3 = "Item/146.png"; break;
        case 147: photoAddress3 = "Item/147.png"; break;
        case 148: photoAddress3 = "Item/148.gif"; break;
        case 149: photoAddress3 = "Item/149.gif"; break;
        case 150: photoAddress3 = "Item/150.gif"; break;
        case 151: photoAddress3 = "Item/151.png"; break;
        case 152: photoAddress3 = "Item/152.png"; break;
        case 153: photoAddress3 = "Item/153.png"; break;
        case 154: photoAddress3 = "Item/154.png"; break;
        case 155: photoAddress3 = "Item/155.png"; break;
        case 156: photoAddress3 = "Item/156.png"; break;
        case 157: photoAddress3 = "Item/157.png"; break;
        case 158: photoAddress3 = "Item/158.png"; break;
        case 159: photoAddress3 = "Item/159.png"; break;
        case 160: photoAddress3 = "Item/160.png"; break;
        case 161: photoAddress3 = "Item/161.gif"; break;
        case 162: photoAddress3 = "Item/162.gif"; break;
        case 163: photoAddress3 = "Item/163.png"; break;
        case 164: photoAddress3 = "Item/164.png"; break;
        case 165: photoAddress3 = "Item/165.png"; break;
        case 166: photoAddress3 = "Item/166.png"; break;
        case 167: photoAddress3 = "Item/167.png"; break;
        case 168: photoAddress3 = "Item/168.png"; break;
        case 169: photoAddress3 = "Item/169.png"; break;
        case 170: photoAddress3 = "Item/170.png"; break;
        case 171: photoAddress3 = "Item/171.png"; break;
        case 172: photoAddress3 = "Item/172.png"; break;
        case 173: photoAddress3 = "Item/173.png"; break;
        case 174: photoAddress3 = "Item/174.png"; break;
        case 175: photoAddress3 = "Item/175.png"; break;
        case 176: photoAddress3 = "Item/176.png"; break;
        case 177: photoAddress3 = "Item/177.png"; break;
        case 178: photoAddress3 = "Item/178.png"; break;
        case 179: photoAddress3 = "Item/179.png"; break;
        case 180: photoAddress3 = "Item/180.png"; break;
        case 181: photoAddress3 = "Item/181.png"; break;
        case 182: photoAddress3 = "Item/182.png"; break;
        case 183: photoAddress3 = "Item/183.png"; break;
        case 184: photoAddress3 = "Item/184.png"; break;
        case 185: photoAddress3 = "Item/185.png"; break;
        case 186: photoAddress3 = "Item/186.png"; break;
        case 187: photoAddress3 = "Item/187.png"; break;
        case 188: photoAddress3 = "Item/188.png"; break;
        case 189: photoAddress3 = "Item/189.png"; break;
        case 190: photoAddress3 = "Item/190.png"; break;
        case 191: photoAddress3 = "Item/191.png"; break;
        case 192: photoAddress3 = "Item/192.png"; break;
        case 193: photoAddress3 = "Item/193.png"; break;
        case 194: photoAddress3 = "Item/194.png"; break;
        case 195: photoAddress3 = "Item/195.png"; break;
        case 196: photoAddress3 = "Item/196.png"; break;
        case 197: photoAddress3 = "Item/197.png"; break;
        case 198: photoAddress3 = "Item/198.png"; break;
        case 199: photoAddress3 = "Item/199.png"; break;
        case 200: photoAddress3 = "Item/200.png"; break;
        case 201: photoAddress3 = "Item/201.png"; break;
        case 202: photoAddress3 = "Item/202.png"; break;
        case 203: photoAddress3 = "Item/203.png"; break;
        case 204: photoAddress3 = "Item/204.png"; break;
        case 205: photoAddress3 = "Item/205.png"; break;
        case 206: photoAddress3 = "Item/206.png"; break;
        case 207: photoAddress3 = "Item/207.png"; break;
        case 208: photoAddress3 = "Item/208.png"; break;
        case 209: photoAddress3 = "Item/209.png"; break;

        }
    }

    function textConfiguration1(){
        var userSearch;
        var textToCheck;
        var userSearchLength;

        userSearchLength = searchInput.text.length
        userSearch = searchInput.text
        userSearch = userSearch.toUpperCase()

        findPhoto1 = 0
        findShortExplanation1 = 0
        searchFound1 = ""

        for(var i = 0; i < items.length; i++){
            textToCheck = items[i].substring(0,userSearchLength)
            textToCheck = textToCheck.toUpperCase()

            if(userSearch == textToCheck){
                searchFound1 = items[i]
                findPhoto1 = i+1
                findShortExplanation1 = i
            }
        }
        for(var j = 0; j < itemsP.length; j++){
            textToCheck = itemsP[j].substring(0,userSearchLength)
            textToCheck = textToCheck.toUpperCase()

            if(userSearch == textToCheck){
                searchFound1 = itemsP[j]
                findPhoto1 = j+1
                findShortExplanation1 = j
            }
        }
        if(searchInput.text == ""){
            searchInputDisplay1 = ""
        }else{
            searchInputDisplay1 = searchFound1
        }


    }
    function textConfiguration2(){
        var userSearch;
        var textToCheck;
        var userSearchLength;

        userSearchLength = searchInput.text.length
        userSearch = searchInput.text
        userSearch = userSearch.toUpperCase()

        findPhoto2 = 0
        searchFound2 = ""

        for(var i = 0; i < items.length; i++){
            textToCheck = items[i].substring(0,userSearchLength)
            textToCheck = textToCheck.toUpperCase()

            if(userSearch == textToCheck){
                if(searchFound1 != items[i]){
                    searchFound2 = items[i]
                    findPhoto2 = i+1
                }

            }
        }

        for(var j = 0; j < itemsP.length; j++){
            textToCheck = itemsP[j].substring(0,userSearchLength)
            textToCheck = textToCheck.toUpperCase()

            if(userSearch == textToCheck){
                if(searchFound1 != itemsP[j]){
                    searchFound2 = itemsP[j]
                    findPhoto2 = j+1
                }

            }
        }
        if(searchInput.text == ""){
            searchInputDisplay2 = ""
        }else{
            searchInputDisplay2 = searchFound2
        }

    }
    function textConfiguration3(){
        var userSearch;
        var textToCheck;
        var userSearchLength;

        userSearchLength = searchInput.text.length
        userSearch = searchInput.text
        userSearch = userSearch.toUpperCase()

        findPhoto3 = 0
        searchFound3 = ""

        for(var i = 0; i < items.length; i++){
            textToCheck = items[i].substring(0,userSearchLength)
            textToCheck = textToCheck.toUpperCase()

            if(userSearch == textToCheck){
                if(searchFound1 != items[i] && searchFound2 != items[i]){
                    searchFound3 = items[i]
                    findPhoto3 = i+1
                }

            }
        }

        for(var j = 0; j < itemsP.length; j++){
            textToCheck = itemsP[j].substring(0,userSearchLength)
            textToCheck = textToCheck.toUpperCase()

            if(userSearch == textToCheck){
                if(searchFound1 != itemsP[j] && searchFound2 != itemsP[j]){
                    searchFound3 = itemsP[j]
                    findPhoto3 = j+1
                }

            }
        }
        if(searchInput.text == ""){
            searchInputDisplay3 = ""
        }else{
            searchInputDisplay3 = searchFound3
        }


    }


    //Background
    Image{
        x: 0
        y: 0
        source: "Image/backGround.png"
        width: 432
        height: 768
    }

    //AppLogo
    Button{
        setText: "ایران کرافت"
        setPointSize: 40
        setColor: "#00e600"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50

    }

    //*********SEARCHPANEL*********//

    //Button
    Button{
        setText: "سرچ"
        setColor: "#00e600"
        setPointSize: 40
        y: 150
        anchors.horizontalCenter: parent.horizontalCenter
        onButtonClicked: {
            searchPanel.visible = true
        }

    }

    //SearchPanel
    Panel{
        id: searchPanel
        visible: false
        anchors.centerIn: parent

        //searchInput
        Rectangle{
            color: "#000000"
            radius: 15
            width: searchInput.width + 15
            height: searchInput.height + 7
            border.color: "#40ff00"
            border.width: 2
            anchors.horizontalCenter: parent.horizontalCenter
            y: -200
            TextEdit{
                id: searchInput
                text: "کلمه مورد نظر را بنویسید"
                color: "white"
                font.family: "B Nazanin"
                font.pointSize: 18
                selectByMouse: true
                anchors.horizontalCenter: parent.horizontalCenter
                y: 2

                onTextChanged: {
                    textConfiguration1()
                    photoConfiguration1()
                    textConfiguration2()
                    photoConfiguration2()
                    textConfiguration3()
                    photoConfiguration3()
                }

                onCursorVisibleChanged: {
                    if(searchInput.text == "کلمه مورد نظر را بنویسید"){
                        searchInput.text = ""
                    }


                }
            }
        }



        //searchInput Display 1******
        Button{
            id: searchDisplay1
            y: -100
            Text{
                text: searchInputDisplay1
                font.pointSize: 18
                color: "white"
                y: -20
                x: -120
                width: 130
                wrapMode: Text.WrapAnywhere
            }


            onButtonClicked: {
                searchPanelChild1.visible = true
            }

        }

        //SearchPanel CHILD
        Panel{
            id: searchPanelChild1
            z: 1
            visible: false

            //Item Name
            Text{
                text:qsTr(searchFound1)
                font.family: "B Nazanin"
                font.pointSize: 25
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                y: -280
            }
            Close{
                y: -299
                x: 150
                onButtonClicked: {
                    searchPanelChild1.visible = false
                }
            }
        }

        //Image 1
        AnimatedImage{
            playing: true
            id: image1
            width: {
                if(searchPanelChild1.visible == false){
                    107
                }else if(searchPanelChild1.visible == true) {
                    214
                }
            }

            height: {
                if(searchPanelChild1.visible == false){
                    60
                }else if(searchPanelChild1.visible == true) {
                    120
                }
            }
            y: -127
            x: {
                if(searchPanelChild1.visible == false){
                    x: 15
                }else if(searchPanelChild1.visible == true){
                    x: -107
                }
            }

            z:{
                if(searchPanelChild1.visible == true){
                    z: 2
                }else if(searchPanelChild1.visible == false){
                    z: 0
                }
            }

            source: {
                if(searchInput.text.length == 0){
                    ""
                }else{
                    photoAddress1
                }

            }

        }

        //Short Explanation 1
        ScrollView{
            anchors.horizontalCenter: parent.horizontalCenter
            width: 250
            height: 250
            clip: true
            z: 2
            y: 20
            ScrollBar.horizontal.interactive: true
            ScrollBar.vertical.interactive: true
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            visible: {
                if(searchPanelChild1.visible == false){
                    false
                }else{
                    true
                }
            }
            Text{

                width: 250
                wrapMode: Text.WrapAnywhere
                id: shortExplanation1Id
                text: qsTr(findShortExplanationString1)

                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 18



            }
        }

        //searchInput Display 2*******
        Button{
            id: searchDisplay2
            Text{
                text: searchInputDisplay2
                font.pointSize: 18
                color: "white"
                y: -20
                x: -120
                width: 130
                wrapMode: Text.WrapAnywhere
            }

            onButtonClicked: {
                searchPanelChild2.visible = true
            }

        }

        //SearchPanel CHILD2
        Panel{
            id: searchPanelChild2
            z: 1
            visible: false

            //Item Name
            Text{
                text:qsTr(searchFound2)
                font.family: "B Nazanin"
                font.pointSize: 25
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                y: -280
            }
            Close{
                y: -299
                x: 150
                onButtonClicked: {
                    searchPanelChild2.visible = false
                }
            }
        }

        //Image 2
        AnimatedImage{
            playing: true
            id: image2
            width: {
                if(searchPanelChild2.visible == false){
                    107
                }else if(searchPanelChild2.visible == true) {
                    214
                }
            }

            height: {
                if(searchPanelChild2.visible == false){
                    60
                }else if(searchPanelChild2.visible == true) {
                    120
                }
            }
            y: {
                if(searchPanelChild2.visible == false){
                    y: -27
                }else{
                    y: -127
                }
            }

            x: {
                if(searchPanelChild2.visible == false){
                    x: 15
                }else if(searchPanelChild2.visible == true){
                    x: -107
                }
            }

            z:{
                if(searchPanelChild2.visible == true){
                    z: 2
                }else if(searchPanelChild2.visible == false){
                    z: 0
                }
            }

            source: {
                if(searchInput.text.length == 0){
                    ""
                }else{
                    photoAddress2
                }

            }

        }

        //searchInput Display 3*******
        Button{
            id: searchDisplay3
            y: 100
            Text{
                text: searchInputDisplay3
                font.pointSize: 18
                color: "white"
                y: -20
                x: -120
                width: 130
                wrapMode: Text.WrapAnywhere
            }

            onButtonClicked: {
                searchPanelChild3.visible = true
            }


        }

        //SearchPanel CHILD3
        Panel{
            id: searchPanelChild3
            z: 1
            visible: false

            //Item Name
            Text{
                text:qsTr(searchFound3)
                font.family: "B Nazanin"
                font.pointSize: 25
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
                y: -280
            }
            Close{
                y: -299
                x: 150
                onButtonClicked: {
                    searchPanelChild3.visible = false
                }
            }
        }

        //Image 3
        AnimatedImage{
            id: image3
            playing: true
            width: {
                if(searchPanelChild3.visible == false){
                    107
                }else if(searchPanelChild3.visible == true) {
                    214
                }
            }

            height: {
                if(searchPanelChild3.visible == false){
                    60
                }else if(searchPanelChild3.visible == true) {
                    120
                }
            }
            y: {
                if(searchPanelChild3.visible == false){
                    y: 75
                }else{
                    y: -127
                }
            }

            x: {
                if(searchPanelChild3.visible == false){
                    x: 15
                }else if(searchPanelChild3.visible == true){
                    x: -107
                }
            }

            z:{
                if(searchPanelChild3.visible == true){
                    z: 2
                }else if(searchPanelChild3.visible == false){
                    z: 0
                }
            }

            source: {
                if(searchInput.text.length == 0){
                    ""
                }else{
                    photoAddress3
                }

            }

        }

        //ClosePanel BUTTON
        Close{
            y: -299
            x: 150

            onButtonClicked: {
                searchPanel.visible = false
            }
        }

        //**********Images************//






    }



}

