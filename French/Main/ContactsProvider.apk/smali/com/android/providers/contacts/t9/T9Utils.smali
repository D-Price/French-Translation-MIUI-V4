.class public abstract Lcom/android/providers/contacts/t9/T9Utils;
.super Ljava/lang/Object;
.source "T9Utils.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CREATE_STATEMENTS:[Ljava/lang/String;

.field public static final ITEM_QUERY_SQLS:[Ljava/lang/String;

.field private static final VALID_T9_KEYS:[C

.field public static final VALID_T9_KEY_COUNT:I

.field private static sBitSet:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field public static sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field public static sContext:Landroid/content/Context;

.field public static sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field public static sDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public static sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field public static sIsSpItemVisibile:Z

.field private static sItemList:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private static final sPinyinT9Map:[C

.field public static sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field private static sStringBuilder:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private static final sZhuyin2T9Map:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 28
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEYS:[C

    .line 36
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sPinyinT9Map:[C

    .line 49
    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sZhuyin2T9Map:[C

    .line 58
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEYS:[C

    array-length v0, v0

    sput v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    .line 67
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_id"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v7

    const-string v1, "normalized_data"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t9_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->COLUMNS:[Ljava/lang/String;

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    .line 116
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DROP TABLE IF EXISTS t9_lookup"

    aput-object v1, v0, v5

    const-string v1, "CREATE TABLE t9_lookup (data_id INTEGER NOT NULL DEFAULT 0,contact_id INTEGER NOT NULL DEFAULT 0,raw_contact_id INTEGER NOT NULL DEFAULT 0,data TEXT NOT NULL,normalized_data TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,UNIQUE(data_id))"

    aput-object v1, v0, v6

    const-string v1, "CREATE INDEX t9_lookup_raw_contact_id ON t9_lookup (raw_contact_id)"

    aput-object v1, v0, v3

    const-string v1, "CREATE INDEX t9_lookup_contact_id ON t9_lookup (contact_id)"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->CREATE_STATEMENTS:[Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getSpItemVisibility()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/t9/T9Utils;->sIsSpItemVisibile:Z

    .line 173
    new-instance v0, Lcom/android/providers/contacts/t9/T9Utils$1;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Utils$1;-><init>()V

    invoke-static {v0, v3}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sBitSet:Lmiui/util/SimplePool$PoolInstance;

    .line 184
    new-instance v0, Lcom/android/providers/contacts/t9/T9Utils$2;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Utils$2;-><init>()V

    invoke-static {v0, v4}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sStringBuilder:Lmiui/util/SimplePool$PoolInstance;

    .line 195
    new-instance v0, Lcom/android/providers/contacts/t9/T9Utils$3;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Utils$3;-><init>()V

    invoke-static {v0, v3}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sItemList:Lmiui/util/SimplePool$PoolInstance;

    return-void

    .line 28
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
    .end array-data

    .line 36
    :array_1
    .array-data 0x2
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 49
    :array_2
    .array-data 0x2
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static converDigitToInitial(C)C
    .locals 1
    .parameter "digit"

    .prologue
    .line 321
    add-int/lit8 v0, p0, -0x23

    add-int/lit8 v0, v0, 0x43

    int-to-char v0, v0

    return v0
.end method

.method static convertIndexToT9Key(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 335
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEYS:[C

    aget-char v0, v0, p0

    return v0
.end method

.method static convertT9CharToIndex(C)I
    .locals 2
    .parameter "digit"

    .prologue
    .line 347
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 348
    add-int/lit8 v0, p0, -0x30

    .line 359
    :goto_0
    return v0

    .line 351
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 355
    :sswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 357
    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 359
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static formatCharToT9(C)C
    .locals 3
    .parameter "c"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, t9Digit:C
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_1

    .line 302
    sget-object v1, Lcom/android/providers/contacts/t9/T9Utils;->sPinyinT9Map:[C

    add-int/lit8 v2, p0, -0x41

    aget-char v0, v1, v2

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_2

    .line 304
    sget-object v1, Lcom/android/providers/contacts/t9/T9Utils;->sPinyinT9Map:[C

    add-int/lit8 v2, p0, -0x61

    aget-char v0, v1, v2

    goto :goto_0

    .line 305
    :cond_2
    const/16 v1, 0x3105

    if-lt p0, v1, :cond_3

    const/16 v1, 0x3129

    if-gt p0, v1, :cond_3

    .line 306
    sget-object v1, Lcom/android/providers/contacts/t9/T9Utils;->sZhuyin2T9Map:[C

    add-int/lit16 v2, p0, -0x3105

    aget-char v0, v1, v2

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    move v0, p0

    goto :goto_0
.end method

.method public static getReusableBitSet()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sBitSet:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public static getReusableItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sItemList:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getReusableStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sStringBuilder:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static getSpItemVisibility()Z
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 389
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isInitial(C)Z
    .locals 1
    .parameter "digit"

    .prologue
    .line 325
    const/16 v0, 0x43

    if-lt p0, v0, :cond_0

    const/16 v0, 0x59

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidT9Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 281
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidT9Key(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const/4 v2, 0x0

    .line 291
    :goto_1
    return v2

    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 367
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 370
    const-string v0, "T9"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-void
.end method

.method public static onDatabaseChanged(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 208
    sput-object p0, Lcom/android/providers/contacts/t9/T9Utils;->sContext:Landroid/content/Context;

    .line 209
    sput-object p1, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport;->getPhoneMimeTypeId()J

    move-result-wide v0

    .line 212
    .local v0, phoneMimeTypeId:J
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport;->getSipMimeTypeId()J

    move-result-wide v2

    .line 213
    .local v2, sipMimeTypeId:J
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_ALL:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 214
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_CONTACT_ID:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 215
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_RAW_CONTACT_ID:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 216
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    const/4 v5, 0x3

    sget-object v6, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_DATA_ID:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 218
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_0

    .line 219
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 221
    :cond_0
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT OR IGNORE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 223
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_1

    .line 224
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 226
    :cond_1
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 229
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_2

    .line 230
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 232
    :cond_2
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 237
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_3

    .line 238
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 240
    :cond_3
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM t9_lookup WHERE raw_contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 243
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_4

    .line 244
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 246
    :cond_4
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM t9_lookup WHERE contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 249
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_5

    .line 250
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 252
    :cond_5
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM t9_lookup WHERE data_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 254
    return-void
.end method

.method public static plog(JLjava/lang/String;)V
    .locals 0
    .parameter "timeStart"
    .parameter "msg"

    .prologue
    .line 376
    return-void
.end method

.method public static recyle(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 269
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sStringBuilder:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0, p0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public static recyle(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sItemList:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0, p0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static recyle(Ljava/util/BitSet;)V
    .locals 1
    .parameter "bitSet"

    .prologue
    .line 261
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sBitSet:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0, p0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public static updateSpItemVisibility()Z
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getSpItemVisibility()Z

    move-result v0

    .line 380
    .local v0, spItemVisibile:Z
    sget-boolean v1, Lcom/android/providers/contacts/t9/T9Utils;->sIsSpItemVisibile:Z

    if-eq v1, v0, :cond_0

    .line 381
    sput-boolean v0, Lcom/android/providers/contacts/t9/T9Utils;->sIsSpItemVisibile:Z

    .line 382
    const/4 v1, 0x1

    .line 384
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
