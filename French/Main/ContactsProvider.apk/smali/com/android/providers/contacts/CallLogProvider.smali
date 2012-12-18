.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field private static final EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mUseStrictPhoneNumberComparation:Z

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getInequalityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 66
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/filter/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 76
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "firewalltype"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "forwarded_call"

    const-string v2, "forwarded_call"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number_type"

    const-string v2, "number_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "source_id"

    const-string v2, "source_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "my_number"

    const-string v2, "my_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mark_deleted"

    const-string v2, "mark_deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_1"

    const-string v2, "sync_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_read"

    const-string v2, "is_read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "geocoded_location"

    const-string v2, "geocoded_location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup_uri"

    const-string v2, "lookup_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "matched_number"

    const-string v2, "matched_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "formatted_number"

    const-string v2, "formatted_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkIsAllowVoicemailRequest(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri %s cannot be used for voicemail record. Please set \'%s=true\' in the uri."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "allow_voicemails"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    return-void
.end method

.method private checkIsLimitTheCallLog()V
    .locals 6

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_log_number_limit"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 403
    .local v0, callRecordsLimit:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_log_limit_number"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, limitation:I
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "calls"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/T9SearchSupport;->onCallLogRemoveExpiredEntries(I)V

    .line 413
    .end local v1           #limitation:I
    :cond_0
    return-void
.end method

.method private checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V
    .locals 1
    .parameter "uri"
    .parameter "selectionBuilder"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0
.end method

.method private getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "insertHelper"

    .prologue
    .line 336
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "db"

    .prologue
    .line 328
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private hasVoicemailValue(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 340
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowVoicemailRequest(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 364
    const-string v0, "allow_voicemails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 390
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 391
    .end local v1           #id:Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid call id in uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 14
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 281
    new-instance v13, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v13, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v13}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 284
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 285
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 286
    .local v11, matchedUriId:I
    packed-switch v11, :pswitch_data_0

    .line 293
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    :pswitch_0
    const-string v2, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 295
    :pswitch_1
    invoke-virtual {v13}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, finalSelection:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v10, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 300
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "calls"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 302
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_0

    .line 307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 306
    :cond_1
    if-eqz v9, :cond_2

    .line 307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    const-string v3, "calls"

    move-object/from16 v0, p3

    invoke-interface {v2, v3, v4, v0}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 313
    .local v12, ret:I
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v10}, Lcom/android/providers/contacts/T9SearchSupport;->onCallLogDeleted(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 314
    return v12

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 186
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 187
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/calls"

    .line 193
    :goto_0
    return-object v1

    .line 191
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/calls"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/calls"

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 201
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v2}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v2, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 210
    .local v15, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v16, "calls"

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 213
    .end local v15           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-wide/16 v3, 0x0

    .line 215
    .local v3, rowId:J
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 217
    .local v14, copiedValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v2, v14}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    invoke-interface {v2, v14}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 221
    const-string v2, "backup"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/CallLogProvider;->checkIsLimitTheCallLog()V

    .line 226
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v2, v3, v16

    if-lez v2, :cond_7

    .line 227
    const-string v2, "number"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, number:Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 229
    .local v7, type:I
    const-string v2, "duration"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "duration"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 231
    .local v8, duration:J
    :goto_0
    const-string v2, "date"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 232
    .local v10, date:J
    const-string v2, "forwarded_call"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "forwarded_call"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    const/4 v12, 0x1

    .line 236
    .local v12, isForwarded:Z
    :goto_1
    const-string v2, "firewalltype"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "firewalltype"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 239
    .local v13, firewallType:I
    :goto_2
    const-string v2, "normalized_number"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, normalizedNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v2

    invoke-virtual/range {v2 .. v13}, Lcom/android/providers/contacts/T9SearchSupport;->onCallLogInserted(JLjava/lang/String;Ljava/lang/String;IJJZI)V

    .line 243
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 245
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #normalizedNumber:Ljava/lang/String;
    .end local v7           #type:I
    .end local v8           #duration:J
    .end local v10           #date:J
    .end local v12           #isForwarded:Z
    .end local v13           #firewallType:I
    :goto_3
    return-object v2

    .line 229
    .restart local v5       #number:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 232
    .restart local v8       #duration:J
    .restart local v10       #date:J
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 236
    .restart local v12       #isForwarded:Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 245
    .end local v5           #number:Ljava/lang/String;
    .end local v7           #type:I
    .end local v8           #duration:J
    .end local v10           #date:J
    .end local v12           #isForwarded:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 112
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x609000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    .line 120
    new-instance v1, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 122
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/provider/ExtraSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v11

    .line 142
    .local v11, emptyCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 181
    .end local v11           #emptyCursor:Landroid/database/Cursor;
    :goto_0
    return-object v11

    .line 144
    .restart local v11       #emptyCursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 145
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "calls"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 146
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 147
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 149
    new-instance v14, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v14, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v14}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 152
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 153
    .local v12, match:I
    packed-switch v12, :pswitch_data_0

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :pswitch_0
    const-string v3, "_id"

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 175
    :goto_1
    :pswitch_1
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 176
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v14}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 178
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    move-object v11, v10

    .line 181
    goto :goto_0

    .line 164
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #c:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 165
    .local v13, phoneNumber:Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v1, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 167
    iget-boolean v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v3, :cond_2

    const-string v3, ", 1)"

    :goto_2
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v3, ", 0)"

    goto :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 251
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 254
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 258
    :cond_0
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, selectionBuilder:Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 261
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 262
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 263
    .local v1, matchedUriId:I
    packed-switch v1, :pswitch_data_0

    .line 272
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :pswitch_0
    const-string v3, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 275
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
