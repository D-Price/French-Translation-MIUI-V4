.class public Lcom/android/providers/contacts/SimStateChangedService;
.super Landroid/app/IntentService;
.source "SimStateChangedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;
    }
.end annotation


# static fields
.field private static final SIM_ACCOUNT_NAME:Ljava/lang/String;


# instance fields
.field protected final COLUMN_NAMES:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mParams:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmiui/provider/ExtraContacts$SimAccount;->NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/SimStateChangedService;->SIM_ACCOUNT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const-string v0, "SimStateChangedService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/android/providers/contacts/SimStateChangedService;->SIM_ACCOUNT_NAME:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "com.android.contacts.sim"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mParams:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->COLUMN_NAMES:[Ljava/lang/String;

    .line 65
    iput-object p0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 67
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    return-void
.end method

.method private deleteSimContacts()V
    .locals 8

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    .local v2, start:J
    iget-object v4, p0, Lcom/android/providers/contacts/SimStateChangedService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "caller_is_syncadapter"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "account_name = ? AND account_type = ?"

    iget-object v7, p0, Lcom/android/providers/contacts/SimStateChangedService;->mParams:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    iget-object v4, p0, Lcom/android/providers/contacts/SimStateChangedService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM accounts WHERE account_name=? AND account_type=?"

    iget-object v6, p0, Lcom/android/providers/contacts/SimStateChangedService;->mParams:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    .local v0, end:J
    return-void
.end method

.method private fixNumberType(Ljava/lang/String;I)I
    .locals 2
    .parameter "number"
    .parameter "type"

    .prologue
    .line 191
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 195
    .restart local p2
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 p2, 0x2

    goto :goto_0
.end method

.method private importOneSimContact(Landroid/database/Cursor;Lmiui/provider/BatchOperation;)V
    .locals 10
    .parameter "cursor"
    .parameter "batchOperations"

    .prologue
    const/4 v9, 0x1

    .line 126
    new-instance v3, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, namePhoneTypePair:Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;
    iget-object v2, v3, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 129
    .local v2, name:Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, phoneNumber:Ljava/lang/String;
    iget v6, v3, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->phoneType:I

    invoke-direct {p0, v4, v6}, Lcom/android/providers/contacts/SimStateChangedService;->fixNumberType(Ljava/lang/String;I)I

    move-result v5

    .line 135
    .local v5, phoneType:I
    invoke-virtual {p2}, Lmiui/provider/BatchOperation;->size()I

    move-result v1

    .line 137
    .local v1, index:I
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "caller_is_syncadapter"

    const-string v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 142
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "account_name"

    sget-object v7, Lcom/android/providers/contacts/SimStateChangedService;->SIM_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 143
    const-string v6, "account_type"

    const-string v7, "com.android.contacts.sim"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 144
    const-string v6, "aggregation_mode"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 147
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 148
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 149
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 150
    const-string v6, "data1"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 153
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 154
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 155
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 156
    const-string v6, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 157
    const-string v6, "data1"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 158
    const-string v6, "is_primary"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 159
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 160
    return-void
.end method

.method private syncSimContacts()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO accounts (account_name,account_type) VALUES (?,?)"

    iget-object v2, p0, Lcom/android/providers/contacts/SimStateChangedService;->mParams:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 93
    .local v12, start:J
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/SimStateChangedService;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 96
    .local v7, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 100
    .local v8, end:J
    if-eqz v7, :cond_3

    .line 102
    :try_start_0
    new-instance v6, Lmiui/provider/BatchOperation;

    invoke-virtual {p0}, Lcom/android/providers/contacts/SimStateChangedService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-direct {v6, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 104
    .local v6, batchOperations:Lmiui/provider/BatchOperation;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, v7, v6}, Lcom/android/providers/contacts/SimStateChangedService;->importOneSimContact(Landroid/database/Cursor;Lmiui/provider/BatchOperation;)V

    .line 107
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 108
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v6           #batchOperations:Lmiui/provider/BatchOperation;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 112
    .restart local v6       #batchOperations:Lmiui/provider/BatchOperation;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 113
    invoke-virtual {v6}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    .end local v6           #batchOperations:Lmiui/provider/BatchOperation;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 123
    .local v10, end2:J
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.contacts.intent.clear_sim_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/android/providers/contacts/SimStateChangedService;->deleteSimContacts()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v1, "com.android.contacts.intent.sync_sim_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/providers/contacts/SimStateChangedService;->deleteSimContacts()V

    .line 209
    invoke-direct {p0}, Lcom/android/providers/contacts/SimStateChangedService;->syncSimContacts()V

    goto :goto_0
.end method
