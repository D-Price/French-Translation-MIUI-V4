.class public Lcom/android/providers/contacts/CheckSyncFieldHelper;
.super Ljava/lang/Object;
.source "CheckSyncFieldHelper.java"


# static fields
.field private static final sPackageList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CheckSyncFieldHelper;->sPackageList:Ljava/util/HashSet;

    .line 30
    sget-object v0, Lcom/android/providers/contacts/CheckSyncFieldHelper;->sPackageList:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/providers/contacts/CheckSyncFieldHelper;->sPackageList:Ljava/util/HashSet;

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/providers/contacts/CheckSyncFieldHelper;->sPackageList:Ljava/util/HashSet;

    const-string v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/providers/contacts/CheckSyncFieldHelper;->sPackageList:Ljava/util/HashSet;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;Ljava/lang/ThreadLocal;JLandroid/content/ContentValues;)V
    .locals 17
    .parameter "context"
    .parameter
    .parameter "rawContactId"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;J",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, mActiveDb:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<Landroid/database/sqlite/SQLiteDatabase;>;"
    if-eqz p0, :cond_0

    if-nez p4, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "sourceid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 50
    .local v14, pas:[Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 54
    move-object v10, v14

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v15, v10, v12

    .line 55
    .local v15, s:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/contacts/CheckSyncFieldHelper;->sPackageList:Ljava/util/HashSet;

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    const-string v1, "CheckSyncFieldHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name is safety "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 62
    .end local v15           #s:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 64
    .local v9, accountType:Ljava/lang/String;
    const-string v16, "_id = ?"

    .line 65
    .local v16, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 68
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "raw_contacts"

    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "_id = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 71
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 73
    const-string v1, "CheckSyncFieldHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 79
    const-string v1, "com.xiaomi"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "CheckSyncFieldHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current caller update sourceId failed, clear sourceId. package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "sourceid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method
