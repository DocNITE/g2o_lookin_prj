const ITEM_KAT_NONE     = 1
const ITEM_KAT_NF       = 2
const ITEM_KAT_FF       = 4
const ITEM_KAT_MUN      = 8
const ITEM_KAT_ARMOR    = 16
const ITEM_KAT_FOOD     = 32
const ITEM_KAT_DOCS     = 64
const ITEM_KAT_POTIONS  = 128
const ITEM_KAT_LIGHT    = 256
const ITEM_KAT_RUNE     = 512
const ITEM_KAT_MAGIC    = -2147483648
const ITEM_KAT_KEYS     = 1

const ITEM_DAG          = 8192
const ITEM_SWD          = 16384
const ITEM_AXE          = 32768
const ITEM_2HD_SWD      = 65536
const ITEM_2HD_AXE      = 131072
const ITEM_SHIELD       = 262144
const ITEM_BOW          = 524288
const ITEM_CROSSBOW     = 1048576

const ITEM_RING         = 2048
const ITEM_AMULET       = 4194304
const ITEM_BELT         = 16777216

const ITEM_DROPPED      = 1024
const ITEM_MISSION      = 4096
const ITEM_MULTI        = 2097152
const ITEM_NFOCUS       = 8388608
const ITEM_CREATEAMMO   = 33554432
const ITEM_NSPLIT       = 67108864
const ITEM_DRINK        = 134217728
const ITEM_TORCH        = 268435456
const ITEM_THROW        = 536870912
const ITEM_ACTIVE       = 1073741824

const MAT_WOOD          = 0
const MAT_STONE         = 1
const MAT_METAL         = 2
const MAT_LEATHER       = 3
const MAT_CLAY          = 4
const MAT_GLAS          = 5

const ATR_HITPOINTS             =  0
const ATR_HITPOINTS_MAX         =  1
const ATR_MANA                  =  2
const ATR_MANA_MAX              =  3

const ATR_STRENGTH              =  4
const ATR_DEXTERITY             =  5
const ATR_REGENERATEHP          =  6
const ATR_REGENERATEMANA        =  7

const ATR_INDEX_MAX             =  8

const WEAR_TORSO                =  1
const WEAR_HEAD                 =  2
const WEAR_EFFECT               =  16

// GUI
const DEFAULT_TEXTURE = "DEFAULT";

const LEFT      = 0;
const RIGHT     = 1;
const TOP       = 2;
const BOTTOM    = 3;

const HORIZONTAL    = 0;
const VERTICAL      = 1;

if (CLIENT_SIDE) {
local myNewSword = CItemManager.register("MYNEWSWORD")
myNewSword.name = "������ � Ohio"

myNewSword.mainflag = ITEM_KAT_NF
myNewSword.flags = ITEM_SWD
myNewSword.material = MAT_METAL

myNewSword.value = 10

myNewSword.damageTotal = 200
myNewSword.damagetype = DAMAGE_EDGE
myNewSword.range = 60

myNewSword.cond_atr[2] = ATR_STRENGTH
myNewSword.cond_value[2] = 50
myNewSword.visual = "ITMW_005_1H_DAGGER_01.3DS"

myNewSword.description = myNewSword.name

myNewSword.text[1] = "�����������:"
myNewSword.count[1] = myNewSword.damageTotal

myNewSword.text[2] = "������ ����:"
myNewSword.count[2] = myNewSword.cond_value[2]

myNewSword.text[4] = "�����:"
myNewSword.count[4] = myNewSword.value

local myNewPotion = CItemManager.register("MYNEWPOTION")
myNewPotion.name = "My new potion"

myNewPotion.mainflag = ITEM_KAT_POTIONS
myNewPotion.flags = ITEM_MULTI

myNewPotion.value = 50

myNewPotion.visual = "ItPo_Mana_01.3DS"
myNewPotion.material = MAT_GLAS

myNewPotion.scemeName = "POTIONFAST"

myNewPotion.wear = WEAR_EFFECT
myNewPotion.effect = "SPELLFX_MANAPOTION"

myNewPotion.description = myNewPotion.name

myNewPotion.text[0] = "Mana Bonus:"
myNewPotion.count[0] = 100

myNewPotion.text[4] = "Value:"
myNewPotion.count[4] = myNewPotion.value
}
enum eModLevel {
    USER    = 0,
    MOD     = 1
    ADMIN   = 2,
}

enum eVisiblePlayer {
    NORMAL = 0,

    UNDEFINED = 65535
}