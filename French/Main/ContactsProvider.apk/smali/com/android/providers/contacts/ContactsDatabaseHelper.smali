.class Lcom/android/providers/contacts/ContactsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsDatabaseHelper$RawContactNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$OrganizationQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$DataUsageStatColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$SearchIndexColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$DirectoryColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$AccountsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PropertiesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PhotoFilesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StreamItemPhotosColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StreamItemsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ContactsStatusUpdatesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StatusUpdatesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$AggregatedPresenceColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PresenceColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$SettingsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameLookupColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$AggregationExceptionColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$MimetypesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PackagesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NameLookupType;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NameLookupColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PhoneLookupColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ActivitiesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$GroupsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PhoneColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$GroupMembershipColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ExtensionsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$DataColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$RawContactsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ContactsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Clauses;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Views;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Joins;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# instance fields
.field private mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mCharArrayBuffer:Landroid/database/CharArrayBuffer;

.field private mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDatabaseOptimizationEnabled:Z

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdIm:J

.field private mMimeTypeIdNickname:J

.field private mMimeTypeIdOrganization:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdSip:J

.field private mMimeTypeIdStructuredName:J

.field private mMimeTypeIdStructuredPostal:J

.field private final mMimetypeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Lcom/android/providers/contacts/NameSplitter$Name;

.field private mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private final mPackageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mReopenDatabase:Z

.field private mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

.field private mUseStrictPhoneNumberComparison:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 731
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 732
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "databaseName"
    .parameter "optimizationEnabled"

    .prologue
    .line 736
    const/4 v1, 0x0

    const/16 v2, 0x27d

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 664
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    .line 666
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    .line 708
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 714
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    .line 715
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 716
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    .line 737
    iput-boolean p3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    .line 738
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 740
    .local v0, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 741
    new-instance v1, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v1}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 742
    new-instance v1, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v1, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 743
    const v1, 0x609000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 746
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method private appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4557
    const-string v0, "lookup.data_id=data._id AND data.raw_contact_id=raw_contacts._id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4558
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 4559
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4560
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 4561
    :cond_0
    const-string v2, " AND ( "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    if-eqz v0, :cond_1

    .line 4563
    const-string v2, " lookup.normalized_number = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4566
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4567
    const-string v0, " OR "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    :cond_2
    if-eqz v1, :cond_3

    .line 4570
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4571
    const-string v1, " lookup.len <= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4572
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4573
    const-string v1, " AND substr("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4574
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4575
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4576
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4577
    const-string v1, " - lookup.len + 1) = lookup.normalized_number"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4583
    const-string v1, " OR ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4584
    const-string v1, " lookup.len > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4585
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4586
    const-string v1, " AND substr(lookup.normalized_number,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4587
    const-string v1, "lookup.len + 1 - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4589
    const-string v0, ") = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4590
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4591
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4594
    const-string v0, " OR "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    const-string v0, " PHONE_NUMBERS_EQUAL(lookup.normalized_number,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4596
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4597
    const-string v0, ", 0)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4599
    :cond_3
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4601
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 4558
    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 4559
    goto/16 :goto_1
.end method

.method private appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4544
    const-string v0, "raw_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4545
    if-eqz p3, :cond_0

    .line 4546
    const-string v0, " JOIN view_contacts contacts_view ON (contacts_view._id = raw_contacts.contact_id)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4549
    :cond_0
    const-string v0, ", (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE (phone_lookup.min_match = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4553
    const-string v0, "\')) AS lookup, data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4554
    return-void
.end method

.method private bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V
    .locals 2
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3912
    if-nez p3, :cond_0

    .line 3913
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3917
    :goto_0
    return-void

    .line 3915
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3904
    if-nez p3, :cond_0

    .line 3905
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3909
    :goto_0
    return-void

    .line 3907
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CASE WHEN photo_file_id IS NULL THEN (CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END) ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "toValues"
    .parameter "toKey"
    .parameter "fromValues"
    .parameter "fromKey"

    .prologue
    .line 4654
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4656
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4657
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 4658
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4659
    const-wide/16 v0, 0x1

    .line 4668
    .local v0, longValue:J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4670
    .end local v0           #longValue:J
    :cond_0
    return-void

    .line 4661
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0       #longValue:J
    goto :goto_0

    .line 4663
    .end local v0           #longValue:J
    .restart local v2       #value:Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4664
    check-cast v2, Ljava/lang/String;

    .end local v2           #value:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .restart local v0       #longValue:J
    goto :goto_0

    .line 4666
    .end local v0           #longValue:J
    .restart local v2       #value:Ljava/lang/Object;
    :cond_3
    check-cast v2, Ljava/lang/Number;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0       #longValue:J
    goto :goto_0
.end method

.method public static copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "toValues"
    .parameter "toKey"
    .parameter "fromValues"
    .parameter "fromKey"

    .prologue
    .line 4647
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4648
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4650
    :cond_0
    return-void
.end method

.method private createAccountSyncStateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3857
    const-string v0, "CREATE TABLE account_sync_state(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_type TEXT NOT NULL,account_name TEXT NOT NULL,number TEXT NOT NULL,base_water_mark INTEGER NOT NULL DEFAULT 0,current_water_mark INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3865
    return-void
.end method

.method private createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1521
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1522
    const-string v0, "CREATE INDEX name_lookup_index ON name_lookup (normalized_name,name_type, raw_contact_id, data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1529
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1530
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (sort_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1534
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key_custom_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1535
    const-string v0, "CREATE INDEX raw_contact_sort_key_custom_index ON raw_contacts (sort_key_custom);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1539
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key2_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1540
    const-string v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (sort_key_alt);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1544
    const-string v0, "DROP INDEX IF EXISTS calls_normalized_number_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1545
    const-string v0, "CREATE INDEX calls_normalized_number_index ON calls (normalized_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method private createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1384
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1385
    const-string v0, "CREATE TRIGGER raw_contacts_deleted    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM data     WHERE raw_contact_id=OLD._id;   DELETE FROM agg_exceptions     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id;   DELETE FROM visible_contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM default_directory     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v0, "DROP TRIGGER IF EXISTS contacts_times_contacted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_times_contacted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1422
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_marked_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v0, "CREATE TRIGGER raw_contacts_marked_deleted    AFTER UPDATE ON raw_contacts BEGIN    UPDATE raw_contacts     SET version=OLD.version+1      WHERE _id=OLD._id       AND NEW.deleted!= OLD.deleted; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1433
    const-string v0, "DROP TRIGGER IF EXISTS data_updated;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1434
    const-string v0, "CREATE TRIGGER data_updated AFTER UPDATE ON data BEGIN    UPDATE data     SET data_version=OLD.data_version+1      WHERE _id=OLD._id;   UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1444
    const-string v0, "DROP TRIGGER IF EXISTS data_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    const-string v0, "CREATE TRIGGER data_deleted BEFORE DELETE ON data BEGIN    UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id;   DELETE FROM phone_lookup     WHERE data_id=OLD._id;   DELETE FROM status_updates     WHERE status_update_data_id=OLD._id;   DELETE FROM name_lookup     WHERE data_id=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1459
    const-string v0, "DROP TRIGGER IF EXISTS groups_updated1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    const-string v0, "CREATE TRIGGER groups_updated1    AFTER UPDATE ON groups BEGIN    UPDATE groups     SET version=OLD.version+1     WHERE _id=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1471
    const-string v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_name IS NULL      AND raw_contacts.account_type IS NULL; "

    .line 1477
    const-string v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_name = groups.account_name             AND raw_contacts.account_type = groups.account_type             AND auto_add != 0);"

    .line 1489
    const-string v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_name = groups.account_name                 AND raw_contacts.account_type = groups.account_type                 AND auto_add != 0);"

    .line 1509
    const-string v0, "DROP TRIGGER IF EXISTS groups_auto_add_updated1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1510
    const-string v0, "CREATE TRIGGER groups_auto_add_updated1    AFTER UPDATE OF auto_add ON groups BEGIN    DELETE FROM default_directory; INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_name IS NULL      AND raw_contacts.account_type IS NULL;  INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_name = groups.account_name             AND raw_contacts.account_type = groups.account_type             AND auto_add != 0); INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_name = groups.account_name                 AND raw_contacts.account_type = groups.account_type                 AND auto_add != 0); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method private createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter

    .prologue
    .line 1551
    const-string v0, "DROP VIEW IF EXISTS view_contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    const-string v0, "DROP VIEW IF EXISTS view_data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1553
    const-string v0, "DROP VIEW IF EXISTS view_raw_contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    const-string v0, "DROP VIEW IF EXISTS view_raw_entities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1555
    const-string v0, "DROP VIEW IF EXISTS view_entities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1556
    const-string v0, "DROP VIEW IF EXISTS view_data_usage_stat;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    const-string v0, "DROP VIEW IF EXISTS view_stream_items;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1559
    const-string v0, "is_primary, is_super_primary, data_version, data.package_id,package AS res_package,data.mimetype_id,mimetype AS mimetype, is_read_only, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data_sync1, data_sync2, data_sync3, data_sync4"

    .line 1588
    const-string v1, "raw_contacts.account_name AS account_name,raw_contacts.account_type AS account_type,raw_contacts.data_set AS data_set,(CASE WHEN raw_contacts.data_set IS NULL THEN raw_contacts.account_type ELSE raw_contacts.account_type||\'/\'||raw_contacts.data_set END) AS account_type_and_data_set,raw_contacts.sourceid AS sourceid,raw_contacts.name_verified AS name_verified,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.sync1 AS sync1,raw_contacts.sync2 AS sync2,raw_contacts.sync3 AS sync3,raw_contacts.sync4 AS sync4"

    .line 1607
    const-string v2, "has_phone_number, name_raw_contact_id, lookup, photo_id, photo_file_id, CAST(EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS INTEGER) AS in_visible_group, status_update_id"

    .line 1617
    const-string v3, "contacts.custom_ringtone AS custom_ringtone,contacts.send_to_voicemail AS send_to_voicemail,contacts.last_time_contacted AS last_time_contacted,contacts.times_contacted AS times_contacted,contacts.starred AS starred"

    .line 1629
    const-string v4, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.sort_key_alt AS sort_key_alt"

    .line 1645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT data._id AS _id,raw_contact_id, raw_contacts.contact_id AS contact_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "nickname"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "nickname"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "company"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "company"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contact_account_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contact_account_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts.contact_id"

    const-string v6, "photo_uri"

    invoke-static {v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts.contact_id"

    const-string v6, "photo_thumb_uri"

    invoke-static {v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contact_is_user_profile"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "groups"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sourceid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "group_sourceid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " JOIN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetypes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ON ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data.mimetype_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetypes._id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " JOIN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ON ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data.raw_contact_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts._id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " JOIN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ON ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts.contact_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "contacts._id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " JOIN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AS name_raw_contact ON("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "name_raw_contact_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=name_raw_contact."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " LEFT OUTER JOIN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "packages"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ON ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data.package_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "packages._id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " LEFT OUTER JOIN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "groups"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ON ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetypes.mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "groups._id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "data1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW view_data AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1681
    const-string v3, "custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred"

    .line 1688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT raw_contacts._id AS _id,contact_id, aggregation_mode, raw_contact_is_read_only, deleted, display_name_source, display_name, display_name_alt, phonetic_name, phonetic_name_style, sort_key, sort_key_alt, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "raw_contact_is_user_profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "raw_contacts"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW view_raw_contacts AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contacts.custom_ringtone AS custom_ringtone, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contacts.last_time_contacted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "last_time_contacted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contacts.send_to_voicemail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "send_to_voicemail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contacts.starred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "starred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "company"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contact_account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contacts.times_contacted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "times_contacted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT contacts._id AS _id,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts._id"

    const-string v5, "photo_uri"

    invoke-static {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts._id"

    const-string v5, "photo_thumb_uri"

    invoke-static {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_user_profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS name_raw_contact ON("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name_raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=name_raw_contact."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_contacts AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_sync1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_sync2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_sync3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_sync4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts.starred"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "starred"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contact_is_user_profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sourceid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "group_sourceid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT OUTER JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data.raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT OUTER JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data.package_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packages._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT OUTER JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetypes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data.mimetype_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetypes._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT OUTER JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetypes.mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "groups._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_raw_entities AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT raw_contacts.contact_id AS _id, raw_contacts.contact_id AS contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    const-string v2, "photo_uri"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    const-string v2, "photo_thumb_uri"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS name_raw_contact ON("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=name_raw_contact."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.package_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes.mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_entities AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1805
    const-string v0, "SELECT data_usage_stat.stat_id AS stat_id, data_id, raw_contacts.contact_id AS contact_id, mimetypes.mimetype AS mimetype, usage_type, times_used, last_time_used FROM data_usage_stat JOIN data ON (data._id=data_usage_stat.data_id) JOIN raw_contacts ON (raw_contacts._id=data.raw_contact_id ) JOIN mimetypes ON (mimetypes._id=data.mimetype_id)"

    .line 1822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_data_usage_stat AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1824
    const-string v0, "SELECT stream_items._id, contacts._id AS contact_id, contacts.lookup AS contact_lookup, raw_contacts.account_name, raw_contacts.account_type, raw_contacts.data_set, stream_items.raw_contact_id as raw_contact_id, raw_contacts.sourceid as raw_contact_source_id, stream_items.res_package, stream_items.icon, stream_items.label, stream_items.text, stream_items.timestamp, stream_items.comments, stream_items.stream_item_sync1, stream_items.stream_item_sync2, stream_items.stream_item_sync3, stream_items.stream_item_sync4 FROM stream_items JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id=contacts._id)"

    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_stream_items AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    return-void
.end method

.method private createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 1347
    const-string v0, "CREATE TABLE directories(_id INTEGER PRIMARY KEY AUTOINCREMENT,packageName TEXT NOT NULL,authority TEXT NOT NULL,typeResourceId INTEGER,typeResourceName TEXT,accountType TEXT,accountName TEXT,displayName TEXT, exportSupport INTEGER NOT NULL DEFAULT 0,shortcutSupport INTEGER NOT NULL DEFAULT 0,photoSupport INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    const-string v0, "directoryScanComplete"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    return-void
.end method

.method private createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1895
    const-string v0, "DROP VIEW IF EXISTS view_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1896
    const-string v0, "account_name,account_type,data_set,(CASE WHEN data_set IS NULL THEN account_type ELSE account_type||data_set END) AS account_type_and_data_set,sourceid,version,dirty,title,title_res,notes,system_id,deleted,group_visible,should_sync,auto_add,favorites,group_is_read_only,sync1,sync2,sync3,sync4,package AS res_package"

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT groups._id AS _id,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups LEFT OUTER JOIN packages ON (groups.package_id = packages._id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_groups AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1928
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 4
    .parameter

    .prologue
    .line 720
    const-class v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts2.db"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 723
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 3246
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 3247
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3251
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3252
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3253
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3254
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3255
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3256
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3260
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3262
    return-void
.end method

.method private insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 3285
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 3286
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3290
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3291
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3292
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3293
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3294
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3298
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3300
    return-void
.end method

.method private insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 3
    .parameter "stmt"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "normalizedName"

    .prologue
    .line 3321
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3322
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3323
    const/4 v0, 0x3

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3324
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3325
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 3326
    return-void
.end method

.method private insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 3185
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v8

    .line 3186
    new-instance v9, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v9, p0, v8, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3188
    const-string v0, "vnd.android.cursor.item/name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 3189
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3193
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3194
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3195
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3196
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3197
    invoke-virtual {v8, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 3198
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    move-object v0, v9

    .line 3199
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3202
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3204
    return-void
.end method

.method private loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4611
    const-string v0, "DELETE FROM nickname_lookup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4613
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v1, 0x6060006

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    .line 4614
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 4615
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 4643
    :cond_0
    :goto_0
    return-void

    .line 4619
    :cond_1
    const-string v0, "INSERT INTO nickname_lookup(name,cluster) VALUES (?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move v3, v2

    .line 4624
    :goto_1
    :try_start_0
    array-length v0, v4

    if-ge v3, v0, :cond_3

    .line 4625
    aget-object v0, v4, v3

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v1, v2

    .line 4626
    :goto_2
    array-length v0, v6

    if-ge v1, v0, :cond_2

    .line 4627
    aget-object v0, v6, v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4629
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v5, v7, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4630
    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v0, v7}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4632
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4626
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 4633
    :catch_0
    move-exception v0

    .line 4636
    :try_start_2
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert nickname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 4641
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 4624
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4641
    :cond_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0
.end method

.method private lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4144
    .line 4147
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4148
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 4154
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    return-wide v0

    .line 4149
    :catch_0
    move-exception v0

    .line 4151
    invoke-static {p2, v1, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4152
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    goto :goto_0

    .line 4160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find or create internal lookup table entry for value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3892
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id FROM mimetypes WHERE mimetype=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 3899
    :goto_0
    return-wide v0

    .line 3897
    :catch_0
    move-exception v0

    .line 3899
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private populateMimeTypeCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 772
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 777
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    .line 778
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdIm:J

    .line 779
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdNickname:J

    .line 780
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    .line 781
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    .line 782
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdSip:J

    .line 783
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    .line 784
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredPostal:J

    .line 785
    return-void
.end method

.method private rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3038
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3040
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3041
    return-void
.end method

.method private refreshDatabaseCaches(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    const/4 v0, 0x0

    .line 749
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 750
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 751
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 752
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 753
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 754
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 755
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 756
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 757
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 758
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 759
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 760
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 761
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 762
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 763
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 764
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 765
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 767
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->populateMimeTypeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 768
    return-void
.end method

.method private setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 4727
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4728
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "property_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4729
    const-string v1, "property_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4731
    return-void
.end method

.method private updateAllCallLogCachedLocationInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3073
    const-string v1, "SELECT DISTINCT number,countryiso FROM calls"

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3074
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 3075
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3077
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCallLogCachedLocationInfo(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3079
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3081
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3082
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3084
    :cond_2
    return-void
.end method

.method private updateCallLogCachedLocationInfo(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3088
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 3090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3091
    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3095
    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    const-string v0, "calls"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3099
    return-void
.end method

.method private updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4420
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 4421
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 4423
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string v0, ""

    .line 4429
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM visible_contacts WHERE _id IN(SELECT _id FROM contacts WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/providers/contacts/ContactsDatabaseHelper$Clauses;->CONTACT_IS_VISIBLE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")=0) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visible_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper$Clauses;->CONTACT_IS_VISIBLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4446
    return-void

    .line 4423
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "table"
    .parameter "index"
    .parameter "stats"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4054
    if-nez p3, :cond_0

    .line 4055
    const-string v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx IS NULL"

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4061
    :goto_0
    const-string v0, "INSERT INTO sqlite_stat1 (tbl,idx,stat) VALUES (?,?,?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    aput-object p4, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4063
    return-void

    .line 4058
    :cond_0
    const-string v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx=?"

    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rawContactUpdate"
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameAlternative"
    .parameter "phoneticNameStyle"
    .parameter "phoneticName"
    .parameter "sortKeyPrimary"
    .parameter "sortKeyAlternative"

    .prologue
    .line 2838
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2839
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2840
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2841
    const/4 v0, 0x4

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2842
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2843
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2844
    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2845
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2846
    return-void
.end method

.method private updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 3929
    :try_start_0
    const-string v0, "DELETE FROM sqlite_stat1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3930
    const-string v0, "contacts"

    const-string v1, "contacts_has_phone_index"

    const-string v2, "9000 500"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    const-string v0, "contacts"

    const-string v1, "contacts_name_raw_contact_id_index"

    const-string v2, "9000 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    const-string v0, "raw_contacts"

    const-string v1, "raw_contacts_source_id_index"

    const-string v2, "10000 1 1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    const-string v0, "raw_contacts"

    const-string v1, "raw_contacts_contact_id_index"

    const-string v2, "10000 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    const-string v0, "raw_contacts"

    const-string v1, "raw_contact_sort_key2_index"

    const-string v2, "10000 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3941
    const-string v0, "raw_contacts"

    const-string v1, "raw_contact_sort_key1_index"

    const-string v2, "10000 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3943
    const-string v0, "raw_contacts"

    const-string v1, "raw_contacts_source_id_data_set_index"

    const-string v2, "10000 1 1 1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    const-string v0, "name_lookup"

    const-string v1, "name_lookup_raw_contact_id_index"

    const-string v2, "35000 4"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    const-string v0, "name_lookup"

    const-string v1, "name_lookup_index"

    const-string v2, "35000 2 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3950
    const-string v0, "name_lookup"

    const-string v1, "sqlite_autoindex_name_lookup_1"

    const-string v2, "35000 3 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_index"

    const-string v2, "3500 3 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3955
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_min_match_index"

    const-string v2, "3500 3 2 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_data_id_min_match_index"

    const-string v2, "3500 2 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    const-string v0, "data"

    const-string v1, "data_mimetype_data1_index"

    const-string v2, "60000 5000 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    const-string v0, "data"

    const-string v1, "data_raw_contact_id"

    const-string v2, "60000 10"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    const-string v0, "groups"

    const-string v1, "groups_source_id_index"

    const-string v2, "50 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    const-string v0, "groups"

    const-string v1, "groups_source_id_data_set_index"

    const-string v2, "50 2 2 1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    const-string v0, "nickname_lookup"

    const-string v1, "nickname_lookup_index"

    const-string v2, "500 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3973
    const-string v0, "calls"

    const/4 v1, 0x0

    const-string v2, "250"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    const-string v0, "status_updates"

    const/4 v1, 0x0

    const-string v2, "100"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    const-string v0, "stream_items"

    const/4 v1, 0x0

    const-string v2, "500"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    const-string v0, "stream_item_photos"

    const/4 v1, 0x0

    const-string v2, "50"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3984
    const-string v0, "activities"

    const/4 v1, 0x0

    const-string v2, "5"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    const-string v0, "voicemail_status"

    const/4 v1, 0x0

    const-string v2, "5"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    const-string v0, "accounts"

    const/4 v1, 0x0

    const-string v2, "3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    const-string v0, "visible_contacts"

    const/4 v1, 0x0

    const-string v2, "2000"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3996
    const-string v0, "photo_files"

    const/4 v1, 0x0

    const-string v2, "50"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    const-string v0, "default_directory"

    const/4 v1, 0x0

    const-string v2, "1500"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    const-string v0, "mimetypes"

    const-string v1, "mime_type"

    const-string v2, "18 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4005
    const-string v0, "data_usage_stat"

    const-string v1, "data_usage_stat_index"

    const-string v2, "20 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4009
    const-string v0, "agg_exceptions"

    const/4 v1, 0x0

    const-string v2, "10"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    const-string v0, "settings"

    const/4 v1, 0x0

    const-string v2, "10"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4013
    const-string v0, "packages"

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    const-string v0, "directories"

    const/4 v1, 0x0

    const-string v2, "3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    const-string v0, "v1_settings"

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    const-string v0, "android_metadata"

    const/4 v1, 0x0

    const-string v2, "1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    const-string v0, "_sync_state"

    const-string v1, "sqlite_autoindex__sync_state_1"

    const-string v2, "2 1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    const-string v0, "_sync_state_metadata"

    const/4 v1, 0x0

    const-string v2, "1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    const-string v0, "properties"

    const-string v1, "sqlite_autoindex_properties_1"

    const-string v2, "4 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4029
    const-string v0, "search_index_docsize"

    const/4 v1, 0x0

    const-string v2, "9000"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    const-string v0, "search_index_content"

    const/4 v1, 0x0

    const-string v2, "9000"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    const-string v0, "search_index_stat"

    const/4 v1, 0x0

    const-string v2, "1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    const-string v0, "search_index_segments"

    const/4 v1, 0x0

    const-string v2, "450"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    const-string v0, "search_index_segdir"

    const-string v1, "sqlite_autoindex_search_index_segdir_1"

    const-string v2, "9 5 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4043
    :goto_0
    return-void

    .line 4040
    :catch_0
    move-exception v0

    .line 4041
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "Could not update index stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 2886
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2887
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2915
    :goto_0
    return-void

    .line 2891
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2894
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2898
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2899
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2900
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2901
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2902
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2904
    if-eqz v0, :cond_1

    .line 2905
    const-string v6, "data_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2906
    const-string v2, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2907
    const-string v2, "name_type"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2908
    const-string v2, "normalized_name"

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    const-string v0, "name_lookup"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2913
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    .locals 13
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "displayNameSource"
    .parameter "currentDisplayName"
    .parameter "name"
    .parameter "structuredNameUpdate"
    .parameter "rawContactUpdate"
    .parameter "splitter"
    .parameter "sb"

    .prologue
    .line 2731
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 2732
    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 2733
    .local v12, unadjustedFullNameStyle:I
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 2734
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 2738
    .local v6, displayName:Ljava/lang/String;
    const/4 v2, 0x1

    int-to-long v3, v12

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2739
    const/4 v2, 0x2

    move-object/from16 v0, p8

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2740
    const/4 v2, 0x3

    move-object/from16 v0, p7

    iget v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    int-to-long v3, v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2741
    const/4 v2, 0x4

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2742
    invoke-virtual/range {p8 .. p8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2744
    const/16 v2, 0x28

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 2745
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 2746
    .local v7, displayNameAlternative:Ljava/lang/String;
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v9

    .line 2747
    .local v9, phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2748
    .local v10, sortKey:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2750
    .local v11, sortKeyAlternative:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2751
    move-object v11, v9

    move-object v10, v9

    .line 2758
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 2759
    move-object v10, v6

    .line 2760
    move-object v11, v7

    .line 2763
    :cond_1
    move-object/from16 v0, p7

    iget v8, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move-object v2, p0

    move-object/from16 v3, p9

    move-wide/from16 v4, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    .end local v7           #displayNameAlternative:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #sortKey:Ljava/lang/String;
    .end local v11           #sortKeyAlternative:Ljava/lang/String;
    :cond_2
    return-void

    .line 2752
    .restart local v7       #displayNameAlternative:Ljava/lang/String;
    .restart local v9       #phoneticName:Ljava/lang/String;
    .restart local v10       #sortKey:Ljava/lang/String;
    .restart local v11       #sortKeyAlternative:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2754
    :cond_4
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v2

    move-object/from16 v0, p7

    iget v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-virtual {v2, v6, v3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_0
.end method

.method private upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 2922
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2923
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2948
    :goto_0
    return-void

    .line 2927
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2930
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2934
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2935
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2936
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2937
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2939
    const-string v6, "data_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2940
    const-string v2, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2941
    const-string v2, "name_type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2942
    const-string v2, "normalized_name"

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    const-string v0, "name_lookup"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2946
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2787
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    .line 2789
    const-string v0, "UPDATE data SET data10=? WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 2795
    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "display_name_source"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2800
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2801
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2802
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2803
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2804
    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2806
    invoke-virtual {p3, v7}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v6

    .line 2808
    const/4 v5, 0x1

    int-to-long v8, v6

    invoke-virtual {v10, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2809
    const/4 v5, 0x2

    invoke-virtual {v10, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2810
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2812
    const/4 v8, 0x0

    .line 2813
    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    .line 2814
    invoke-virtual {p3, v4}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2815
    invoke-virtual {p3, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 2816
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2818
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 2823
    :cond_1
    if-nez v8, :cond_2

    move-object v8, v4

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v5, v4

    move-object v9, v8

    .line 2827
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2831
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2833
    return-void
.end method

.method private upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 19
    .parameter "db"
    .parameter "rawContactUpdate"
    .parameter "splitter"

    .prologue
    .line 2678
    :try_start_0
    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 2688
    .local v16, mMimeType:J
    const-string v2, "UPDATE data SET data10=?,data1=?,data11=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 2696
    .local v10, structuredNameUpdate:Landroid/database/sqlite/SQLiteStatement;
    new-instance v18, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v18 .. v18}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 2697
    .local v18, name:Lcom/android/providers/contacts/NameSplitter$Name;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2698
    .local v13, sb:Ljava/lang/StringBuilder;
    const-string v3, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimetype_id="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2702
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2703
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2704
    .local v3, dataId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2705
    .local v5, rawContactId:J
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2706
    .local v7, displayNameSource:I
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2708
    .local v8, displayName:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V

    .line 2709
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 2710
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 2711
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 2712
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 2713
    const/16 v2, 0x8

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 2714
    const/16 v2, 0x9

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 2715
    const/16 v2, 0xa

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 2716
    const/16 v2, 0xb

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v9, v18

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 2718
    invoke-direct/range {v2 .. v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2722
    .end local v3           #dataId:J
    .end local v5           #rawContactId:J
    .end local v7           #displayNameSource:I
    .end local v8           #displayName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2683
    .end local v10           #structuredNameUpdate:Landroid/database/sqlite/SQLiteStatement;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v16           #mMimeType:J
    .end local v18           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :catch_0
    move-exception v15

    .line 2724
    :goto_1
    return-void

    .line 2722
    .restart local v10       #structuredNameUpdate:Landroid/database/sqlite/SQLiteStatement;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v16       #mMimeType:J
    .restart local v18       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2483
    const-string v0, "ALTER TABLE phone_lookup ADD min_match TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2487
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2493
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_min_match_index"

    const-string v2, "10000 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    const-string v0, "UPDATE phone_lookup SET min_match=? WHERE data_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 2502
    const-string v1, "phone_lookup JOIN data ON (data_id=data._id)"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "data1"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2506
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2507
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2508
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2510
    const/4 v4, 0x1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2511
    const/4 v0, 0x2

    invoke-virtual {v8, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2512
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2516
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2518
    return-void
.end method

.method private upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2525
    const-string v0, "DELETE FROM raw_contacts WHERE contact_id NOT NULL AND contact_id NOT IN (SELECT _id FROM contacts)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2530
    const-string v0, "ALTER TABLE contacts ADD name_raw_contact_id INTEGER REFERENCES raw_contacts(_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2533
    const-string v0, "ALTER TABLE raw_contacts ADD contact_in_visible_group INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2538
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id AND raw_contacts.display_name=contacts.display_name ORDER BY _id LIMIT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2550
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2556
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id ORDER BY _id LIMIT 1) WHERE name_raw_contact_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2568
    const-string v0, "UPDATE contacts SET display_name=NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2575
    const-string v0, "UPDATE raw_contacts SET contact_in_visible_group=(SELECT in_visible_group FROM contacts WHERE _id=contact_id) WHERE contact_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2584
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,display_name COLLATE LOCALIZED ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2589
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2590
    const-string v0, "CREATE INDEX contacts_visible_index ON contacts (in_visible_group);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2593
    return-void
.end method

.method private upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 2596
    const-string v0, "ALTER TABLE raw_contacts ADD display_name_alt TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2598
    const-string v0, "ALTER TABLE raw_contacts ADD phonetic_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2600
    const-string v0, "ALTER TABLE raw_contacts ADD phonetic_name_style INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2602
    const-string v0, "ALTER TABLE raw_contacts ADD sort_key TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2605
    const-string v0, "ALTER TABLE raw_contacts ADD sort_key_alt TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2609
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2611
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    .line 2613
    const-string v1, "UPDATE raw_contacts SET display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2624
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 2625
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 2627
    const-string v0, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2628
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,sort_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2633
    const-string v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (contact_in_visible_group,sort_key_alt);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2637
    return-void
.end method

.method private upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 2859
    return-void
.end method

.method private upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2952
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2955
    return-void
.end method

.method private upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 2960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2961
    .local v0, lookupKeyBuilder:Ljava/lang/StringBuilder;
    const-string v1, "UPDATE contacts SET lookup=? WHERE _id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 2965
    .local v11, updateStatement:Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "SELECT DISTINCT contact_id FROM raw_contacts WHERE deleted=0 AND account_type=\'com.android.exchange\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2971
    .local v10, contactIdCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2972
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2973
    .local v8, contactId:J
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2974
    const-string v1, "SELECT account_type, account_name, _id, sourceid, display_name FROM raw_contacts WHERE contact_id=? ORDER BY _id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 2981
    .local v7, c:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2990
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3003
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #contactId:J
    :catchall_1
    move-exception v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3004
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2990
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #contactId:J
    :cond_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2993
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2994
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2998
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v11, v1, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3000
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 2996
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 3003
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #contactId:J
    :cond_2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3004
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3006
    return-void
.end method

.method private upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3009
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY_KEY, property_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3013
    return-void
.end method

.method private upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3016
    const-string v0, "CREATE TABLE accounts (account_name TEXT, account_type TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3021
    const-string v0, "INSERT INTO accounts SELECT DISTINCT account_name, account_type FROM raw_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3023
    return-void
.end method

.method private upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3033
    const-string v0, "DELETE FROM contacts WHERE NOT EXISTS (SELECT 1 FROM raw_contacts WHERE contact_id=contacts._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3035
    return-void
.end method

.method private upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3026
    const-string v0, "ALTER TABLE groups ADD favorites INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3028
    const-string v0, "ALTER TABLE groups ADD auto_add INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3030
    return-void
.end method

.method private upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3332
    const-string v0, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3335
    const-string v0, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE in_visible_group!=0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3339
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3340
    return-void
.end method

.method private upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3346
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3347
    return-void
.end method

.method private upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3350
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3351
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3353
    const-string v0, "ALTER TABLE raw_contacts ADD raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3356
    const-string v0, "ALTER TABLE data ADD is_read_only INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3358
    return-void
.end method

.method private upgradeToVersion405(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3361
    const-string v0, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3363
    const-string v0, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3372
    const-string v0, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3378
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3384
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3385
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3415
    :goto_0
    return-void

    .line 3389
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id, raw_contact_id, data1 FROM data WHERE mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3395
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3397
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3398
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3399
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3400
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3401
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3402
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3403
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3404
    const-string v7, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3405
    const-string v4, "data_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3406
    const-string v2, "normalized_number"

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    const-string v2, "min_match"

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    const-string v2, "phone_lookup"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3413
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeToVersion406(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3418
    const-string v0, "ALTER TABLE calls ADD countryiso TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3419
    return-void
.end method

.method private upgradeToVersion409(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3422
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3423
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3424
    return-void
.end method

.method private upgradeToVersion411(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 3440
    const-string v0, "DROP TABLE IF EXISTS default_directory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3441
    const-string v0, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3444
    const-string v0, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  WHERE raw_contacts.account_name IS NULL    AND raw_contacts.account_type IS NULL "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3451
    const-string v0, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  WHERE NOT EXISTS (SELECT _id   FROM groups   WHERE raw_contacts.account_name = groups.account_name    AND raw_contacts.account_type = groups.account_type    AND groups.auto_add != 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3461
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  JOIN data    ON (raw_contacts._id=raw_contact_id) WHERE mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (SELECT _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  FROM groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE raw_contacts.account_name = groups.account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    AND raw_contacts.account_type = groups.account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    AND groups.auto_add != 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3476
    return-void
.end method

.method private upgradeToVersion413(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3479
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3480
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3481
    return-void
.end method

.method private upgradeToVersion415(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3484
    const-string v0, "ALTER TABLE groups ADD group_is_read_only INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3487
    const-string v0, "UPDATE groups   SET group_is_read_only=1 WHERE system_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3491
    return-void
.end method

.method private upgradeToVersion416(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3494
    const-string v0, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3496
    return-void
.end method

.method private upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3500
    const-string v0, "DELETE FROM name_lookup WHERE name_type=5"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3501
    return-void
.end method

.method private upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3505
    const-string v0, "DELETE FROM name_lookup WHERE name_type IN (6, 7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3506
    return-void
.end method

.method private upgradeToVersion504(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 3509
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->populateMimeTypeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3512
    const-string v3, "SELECT raw_contact_id FROM data WHERE mimetype_id=? AND data4 NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3520
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3521
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3522
    .local v1, rawContactId:J
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3526
    .end local v1           #rawContactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3528
    return-void
.end method

.method private upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3534
    return-void
.end method

.method private upgradeToVersion601(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3537
    const-string v0, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTERGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3544
    const-string v0, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3546
    return-void
.end method

.method private upgradeToVersion602(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3549
    const-string v0, "ALTER TABLE calls ADD voicemail_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3550
    const-string v0, "ALTER TABLE calls ADD _data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3551
    const-string v0, "ALTER TABLE calls ADD has_content INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3552
    const-string v0, "ALTER TABLE calls ADD mime_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3553
    const-string v0, "ALTER TABLE calls ADD source_data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3554
    const-string v0, "ALTER TABLE calls ADD source_package TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3555
    const-string v0, "ALTER TABLE calls ADD state INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3556
    return-void
.end method

.method private upgradeToVersion604(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3559
    const-string v0, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT UNIQUE NOT NULL,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3568
    return-void
.end method

.method private upgradeToVersion605(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3574
    return-void
.end method

.method private upgradeToVersion606(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3577
    const-string v0, "DROP VIEW IF EXISTS view_contacts_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3578
    const-string v0, "DROP VIEW IF EXISTS view_data_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3579
    const-string v0, "DROP VIEW IF EXISTS view_raw_contacts_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3580
    const-string v0, "DROP VIEW IF EXISTS view_raw_entities_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3581
    const-string v0, "DROP VIEW IF EXISTS view_entities_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3582
    const-string v0, "DROP VIEW IF EXISTS view_data_usage_stat_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3583
    const-string v0, "DROP INDEX IF EXISTS contacts_restricted_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3587
    return-void
.end method

.method private upgradeToVersion607(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3594
    return-void
.end method

.method private upgradeToVersion608(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3597
    const-string v0, "ALTER TABLE contacts ADD photo_file_id INTEGER REFERENCES photo_files(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3599
    const-string v0, "CREATE TABLE photo_files(_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3604
    return-void
.end method

.method private upgradeToVersion609(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3610
    return-void
.end method

.method private upgradeToVersion610(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3613
    const-string v0, "ALTER TABLE calls ADD is_read INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3614
    return-void
.end method

.method private upgradeToVersion611(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3617
    const-string v0, "ALTER TABLE raw_contacts ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3618
    const-string v0, "ALTER TABLE groups ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3619
    const-string v0, "ALTER TABLE accounts ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3621
    const-string v0, "CREATE INDEX raw_contacts_source_id_data_set_index ON raw_contacts (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3624
    const-string v0, "CREATE INDEX groups_source_id_data_set_index ON groups (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3626
    return-void
.end method

.method private upgradeToVersion612(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3629
    const-string v0, "ALTER TABLE calls ADD geocoded_location TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3631
    return-void
.end method

.method private upgradeToVersion613(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3644
    const-string v0, "DROP TABLE IF EXISTS stream_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3645
    const-string v0, "DROP TABLE IF EXISTS stream_item_photos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3647
    const-string v0, "CREATE TABLE stream_items(_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3662
    const-string v0, "CREATE TABLE stream_item_photos(_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3672
    return-void
.end method

.method private upgradeToVersion615(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3677
    const-string v0, "ALTER TABLE calls ADD lookup_uri TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3678
    const-string v0, "ALTER TABLE calls ADD matched_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3679
    const-string v0, "ALTER TABLE calls ADD normalized_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3680
    const-string v0, "ALTER TABLE calls ADD photo_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3681
    return-void
.end method

.method private upgradeToVersion618(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3687
    const-string v0, "CREATE TEMPORARY TABLE settings_backup(account_name STRING NOT NULL,account_type STRING NOT NULL,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3693
    const-string v0, "INSERT INTO settings_backup SELECT account_name, account_type, ungrouped_visible, should_sync FROM settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3696
    const-string v0, "DROP TABLE settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3697
    const-string v0, "CREATE TABLE settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3704
    const-string v0, "INSERT INTO settings SELECT account_name, account_type, NULL, ungrouped_visible, should_sync FROM settings_backup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3707
    const-string v0, "DROP TABLE settings_backup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3708
    return-void
.end method

.method private upgradeToVersion622(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3711
    const-string v0, "ALTER TABLE calls ADD formatted_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3712
    return-void
.end method

.method private upgradeToVersion624(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3715
    const-string v0, "ALTER TABLE calls ADD COLUMN firewalltype INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3717
    const-string v0, "ALTER TABLE calls ADD COLUMN forwarded_call INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3719
    const-string v0, "ALTER TABLE calls ADD COLUMN contact_id INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3721
    return-void
.end method

.method private upgradeToVersion625(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3724
    const-string v0, "ALTER TABLE contacts ADD company TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3725
    const-string v0, "ALTER TABLE contacts ADD nickname TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3726
    return-void
.end method

.method private upgradeToVersion628(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3729
    const-string v0, "ALTER TABLE contacts ADD contact_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3730
    return-void
.end method

.method private upgradeToVersion629(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3733
    const-string v0, "ALTER TABLE calls ADD number_type INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3736
    return-void
.end method

.method private upgradeToVersion631(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3739
    const-string v0, "ALTER TABLE calls ADD source_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3740
    const-string v0, "ALTER TABLE calls ADD my_number TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3741
    const-string v0, "ALTER TABLE calls ADD mark_deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3743
    const-string v0, "ALTER TABLE calls ADD sync_1 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3744
    const-string v0, "ALTER TABLE calls ADD sync_2 TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3745
    const-string v0, "ALTER TABLE calls ADD sync_3 INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3747
    const-string v0, "ALTER TABLE raw_contacts ADD sort_key_custom TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3751
    const-string v0, "CREATE INDEX raw_contact_sort_key_custom_index ON raw_contacts (sort_key_custom);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3754
    return-void
.end method

.method private upgradeToVersion632(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3757
    const-string v0, "CREATE INDEX calls_normalized_number_index ON calls (normalized_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3761
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createAccountSyncStateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3762
    return-void
.end method

.method private upgradeToVersion634(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3765
    const-string v1, "calls"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3767
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 3783
    :goto_0
    return-void

    .line 3772
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3773
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3774
    .local v9, number:Ljava/lang/String;
    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v10

    .line 3775
    .local v10, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3776
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "matched_number"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    const-string v0, "calls"

    const-string v1, "number = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {p1, v0, v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3778
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3781
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeToVersion637(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3786
    const-string v1, "calls"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3787
    if-nez v1, :cond_1

    .line 3854
    :cond_0
    :goto_0
    return-void

    .line 3792
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3793
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3794
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 3795
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3796
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 3797
    const-string v6, "matched_number"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    const-string v6, "normalized_number"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    const-string v5, "calls"

    const-string v6, "number = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3800
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3803
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3806
    const-string v5, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    new-array v6, v10, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v6, v9

    const-string v7, "mimetype=?"

    new-array v8, v10, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v8, v9

    move-object v4, p1

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3808
    if-eqz v1, :cond_0

    .line 3813
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3814
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3815
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3816
    const-string v3, "data4"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    const-string v3, "data"

    const-string v4, "data1 = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 3820
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3823
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 3824
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3828
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3830
    :try_start_2
    const-string v4, "phone_lookup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _id, raw_contact_id, data1 FROM data WHERE mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3836
    :cond_4
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3837
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3838
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3839
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3840
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3841
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3842
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3843
    const-string v7, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3844
    const-string v4, "data_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3845
    const-string v2, "normalized_number"

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    const-string v2, "min_match"

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    const-string v2, "phone_lookup"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 3852
    :catchall_2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private upgrateToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2849
    const-string v0, "ALTER TABLE raw_contacts ADD name_verified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2851
    return-void
.end method


# virtual methods
.method public buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "qb"
    .parameter "normalizedNumber"
    .parameter "numberE164"

    .prologue
    .line 4486
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4487
    .local v0, minMatch:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4488
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4491
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4492
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4494
    return-void
.end method

.method public buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 4532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4533
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4534
    const-string v2, "(SELECT DISTINCT raw_contact_id FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4535
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4536
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4537
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4521
    const-string v0, "upper("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4522
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    const-string v0, ")=upper(?) AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4524
    const-string v0, "mimetype_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4525
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4526
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForSip()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4528
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-object v0
.end method

.method public clearSuperPrimary(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    .line 5193
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5194
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_super_primary=0 WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5200
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5201
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5202
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5203
    return-void
.end method

.method public createNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 6

    .prologue
    .line 4109
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x60c019c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x60c019e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v4, 0x60c019d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x60c019f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 4115
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method public createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1369
    const-string v0, "DROP TABLE IF EXISTS search_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    const-string v0, "CREATE VIRTUAL TABLE search_index USING FTS4 (contact_id INTEGER REFERENCES contacts(_id) NOT NULL,content TEXT, name TEXT, tokens TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    return-void
.end method

.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 1884
    const/4 v0, 0x0

    return v0
.end method

.method public deleteNameLookup(J)V
    .locals 2
    .parameter "dataId"

    .prologue
    .line 5259
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5260
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM name_lookup WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 5264
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5266
    return-void
.end method

.method public deleteStatusUpdate(J)V
    .locals 2
    .parameter "dataId"

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 4817
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM status_updates WHERE status_update_data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 4821
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4822
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4823
    return-void
.end method

.method public exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 4766
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4775
    if-eqz p1, :cond_0

    .line 4776
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4778
    :cond_0
    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4779
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4781
    const-string v4, ", calling user: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4782
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 4783
    if-eqz v4, :cond_2

    .line 4784
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4789
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 4790
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 4791
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4792
    const-string v3, ", calling package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4793
    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4806
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4786
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4795
    :cond_3
    const-string v3, ", calling package is one of: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4796
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 4797
    if-eqz v0, :cond_4

    .line 4798
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4800
    :cond_4
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4796
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4802
    :cond_5
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 3882
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 3883
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 3884
    const/4 v1, 0x0

    .line 3887
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3868
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 3869
    .local v2, tokens:[Landroid/text/util/Rfc822Token;
    array-length v4, v2

    if-nez v4, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return-object v3

    .line 3873
    :cond_1
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3874
    .local v0, address:Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3875
    .local v1, at:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3876
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getActivityMimeType(J)Ljava/lang/String;
    .locals 5
    .parameter "activityId"

    .prologue
    .line 4289
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 4290
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT mimetype FROM activities LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) WHERE activities._id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4297
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4298
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4302
    :goto_0
    return-object v1

    .line 4300
    :catch_0
    move-exception v0

    .line 4302
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAggregationMode(J)I
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 4469
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4470
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT aggregation_mode FROM raw_contacts WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4476
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4477
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 4480
    :goto_0
    return v1

    .line 4478
    :catch_0
    move-exception v0

    .line 4480
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getContactId(J)J
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 4453
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4454
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT contact_id FROM raw_contacts WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4460
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4461
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4464
    :goto_0
    return-wide v1

    .line 4462
    :catch_0
    move-exception v0

    .line 4464
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getDataMimeType(J)Ljava/lang/String;
    .locals 5
    .parameter "dataId"

    .prologue
    .line 4268
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 4269
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT mimetype FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE data._id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4276
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4277
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4281
    :goto_0
    return-object v1

    .line 4279
    :catch_0
    move-exception v0

    .line 4281
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisplayNameSourceForMimeTypeId(I)I
    .locals 4
    .parameter "mimeTypeId"

    .prologue
    .line 4249
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4250
    const/16 v0, 0x28

    .line 4260
    :goto_0
    return v0

    .line 4251
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4252
    const/16 v0, 0xa

    goto :goto_0

    .line 4253
    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 4254
    const/16 v0, 0x14

    goto :goto_0

    .line 4255
    :cond_2
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 4256
    const/16 v0, 0x1e

    goto :goto_0

    .line 4257
    :cond_3
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdNickname:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 4258
    const/16 v0, 0x23

    goto :goto_0

    .line 4260
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeTypeId(Ljava/lang/String;)J
    .locals 2
    .parameter "mimetype"

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForEmail()J
    .locals 2

    .prologue
    .line 4237
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    return-wide v0
.end method

.method public getMimeTypeIdForIm()J
    .locals 2

    .prologue
    .line 4233
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdIm:J

    return-wide v0
.end method

.method public getMimeTypeIdForOrganization()J
    .locals 2

    .prologue
    .line 4229
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    return-wide v0
.end method

.method public getMimeTypeIdForPhone()J
    .locals 2

    .prologue
    .line 4241
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    return-wide v0
.end method

.method public getMimeTypeIdForSip()J
    .locals 2

    .prologue
    .line 4245
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdSip:J

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredName()J
    .locals 2

    .prologue
    .line 4221
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredPostal()J
    .locals 2

    .prologue
    .line 4225
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredPostal:J

    return-wide v0
.end method

.method public getPackageId(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 4171
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4186
    :goto_0
    return-wide v2

    .line 4173
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT _id FROM packages WHERE package=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4178
    .local v1, packageQuery:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT INTO packages(package) VALUES (?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4183
    .local v0, packageInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4185
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 4185
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4703
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "property_value"

    aput-object v3, v2, v6

    const-string v3, "property_key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4707
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 4709
    .local v9, value:Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4710
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 4713
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4716
    if-eqz v9, :cond_1

    .end local v9           #value:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 4713
    .restart local v9       #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v9, p2

    .line 4716
    goto :goto_0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4604
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 4067
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4068
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    if-eqz v1, :cond_0

    .line 4069
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 4070
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->close()V

    .line 4071
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4073
    :cond_0
    monitor-exit p0

    return-object v0

    .line 4067
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1344
    return-void
.end method

.method public insertNameLookup(JJILjava/lang/String;)V
    .locals 4
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 5235
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5253
    :goto_0
    return-void

    .line 5239
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 5240
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 5248
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5249
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5250
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5251
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5252
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0
.end method

.method public insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 3118
    const-string v1, "DELETE FROM name_lookup"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3120
    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3129
    .local v0, nameLookupInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3130
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3131
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3135
    return-void

    .line 3133
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 8
    .parameter "stmt"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 3307
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3317
    :cond_0
    :goto_0
    return-void

    .line 3311
    :cond_1
    invoke-static {p7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3312
    .local v7, normalized:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 3316
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "email"

    .prologue
    const/4 v0, 0x0

    .line 5269
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v0

    .line 5280
    :goto_0
    return-object v7

    .line 5273
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5274
    .local v7, address:Ljava/lang/String;
    if-nez v7, :cond_1

    move-object v7, v0

    .line 5275
    goto :goto_0

    .line 5278
    :cond_1
    const/4 v5, 0x4

    invoke-static {v7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForNickname(JJLjava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "nickname"

    .prologue
    .line 5287
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5293
    :goto_0
    return-void

    .line 5291
    :cond_0
    const/4 v5, 0x3

    invoke-static {p5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    .line 5297
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5298
    if-eqz p5, :cond_0

    .line 5299
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5301
    :cond_0
    if-eqz p6, :cond_1

    .line 5302
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5304
    :cond_1
    if-eqz p7, :cond_2

    .line 5305
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5308
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 5309
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 5312
    :cond_3
    return-void
.end method

.method public insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .parameter "dataId"
    .parameter "status"
    .parameter "resPackage"
    .parameter "iconResource"
    .parameter "labelResource"

    .prologue
    .line 4849
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 4850
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "INSERT INTO status_updates(status_update_data_id, status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 4860
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4861
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4862
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4863
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4864
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4865
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4898
    :goto_0
    return-void

    .line 4866
    :catch_0
    move-exception v0

    .line 4868
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 4869
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE status_updates SET status_ts=?,status=? WHERE status_update_data_id=? AND status!=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 4877
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4878
    .local v1, timestamp:J
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4879
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4880
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4881
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4882
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4884
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 4885
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE status_updates SET status_res_package=?,status_icon=?,status_label=? WHERE status_update_data_id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 4892
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4893
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4894
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4895
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4896
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public isContactDatabase()Z
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 5
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v0, 0x1

    .line 4403
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4404
    const-string v1, "SELECT EXISTS (SELECT 1 FROM default_directory WHERE _id=?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4409
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4410
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .parameter "projection"
    .parameter "columns"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4737
    if-nez p1, :cond_1

    .line 4758
    :cond_0
    :goto_0
    return v8

    .line 4742
    :cond_1
    array-length v10, p2

    if-ne v10, v8, :cond_2

    .line 4743
    aget-object v2, p2, v9

    .line 4744
    .local v2, column:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v7, v0, v3

    .line 4745
    .local v7, test:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4744
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4750
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 4751
    .restart local v7       #test:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_3

    aget-object v2, v1, v3

    .line 4752
    .restart local v2       #column:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4751
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4750
    .end local v2           #column:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_4
    move v8, v9

    .line 4758
    goto :goto_0
.end method

.method public lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .parameter "mimetype"
    .parameter "db"

    .prologue
    .line 4200
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4216
    :goto_0
    return-wide v2

    .line 4202
    :cond_0
    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=?"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4207
    .local v1, mimetypeQuery:Landroid/database/sqlite/SQLiteStatement;
    const-string v2, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4213
    .local v0, mimetypeInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4215
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 4215
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 881
    const-string v0, "ContactsDatabaseHelper"

    const-string v1, "Bootstrapping database version: 637"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 886
    const-string v0, "CREATE TABLE contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,name_raw_contact_id INTEGER REFERENCES raw_contacts(_id),photo_id INTEGER REFERENCES data(_id),photo_file_id INTEGER REFERENCES photo_files(_id),custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,has_phone_number INTEGER NOT NULL DEFAULT 0,lookup TEXT,company TEXT,nickname TEXT,contact_account_type TEXT,status_update_id INTEGER REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 904
    const-string v0, "CREATE INDEX contacts_has_phone_index ON contacts (has_phone_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    const-string v0, "CREATE TABLE raw_contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name STRING DEFAULT NULL, account_type STRING DEFAULT NULL, data_set STRING DEFAULT NULL, sourceid TEXT,raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,contact_id INTEGER REFERENCES contacts(_id),aggregation_mode INTEGER NOT NULL DEFAULT 0,aggregation_needed INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,display_name TEXT,display_name_alt TEXT,display_name_source INTEGER NOT NULL DEFAULT 0,phonetic_name TEXT,phonetic_name_style TEXT,sort_key TEXT COLLATE PHONEBOOK,sort_key_alt TEXT COLLATE PHONEBOOK,sort_key_custom TEXT COLLATE PHONEBOOK,name_verified INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 951
    const-string v0, "CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 955
    const-string v0, "CREATE INDEX raw_contacts_source_id_index ON raw_contacts (sourceid, account_type, account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 961
    const-string v0, "CREATE INDEX raw_contacts_source_id_data_set_index ON raw_contacts (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    const-string v0, "CREATE TABLE stream_items (_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 985
    const-string v0, "CREATE TABLE stream_item_photos (_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 997
    const-string v0, "CREATE TABLE photo_files (_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1009
    const-string v0, "CREATE TABLE packages (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1015
    const-string v0, "CREATE TABLE mimetypes (_id INTEGER PRIMARY KEY AUTOINCREMENT,mimetype TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1021
    const-string v0, "CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    const-string v0, "CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,is_read_only INTEGER NOT NULL DEFAULT 0,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1056
    const-string v0, "CREATE INDEX data_raw_contact_id ON data (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1063
    const-string v0, "CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    const-string v0, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1078
    const-string v0, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1084
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string v0, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1094
    const-string v0, "CREATE TABLE name_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_name TEXT NOT NULL,name_type INTEGER NOT NULL,PRIMARY KEY (data_id, normalized_name, name_type));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1107
    const-string v0, "CREATE INDEX name_lookup_raw_contact_id_index ON name_lookup (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1111
    const-string v0, "CREATE TABLE nickname_lookup (name TEXT,cluster TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    const-string v0, "CREATE UNIQUE INDEX nickname_lookup_index ON nickname_lookup (name, cluster);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    const-string v0, "CREATE TABLE groups (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),account_name STRING DEFAULT NULL, account_type STRING DEFAULT NULL, data_set STRING DEFAULT NULL, sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,title TEXT,title_res INTEGER,notes TEXT,system_id TEXT,deleted INTEGER NOT NULL DEFAULT 0,group_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1,auto_add INTEGER NOT NULL DEFAULT 0,favorites INTEGER NOT NULL DEFAULT 0,group_is_read_only INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1147
    const-string v0, "CREATE INDEX groups_source_id_index ON groups (sourceid, account_type, account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1153
    const-string v0, "CREATE INDEX groups_source_id_data_set_index ON groups (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1160
    const-string v0, "CREATE TABLE IF NOT EXISTS agg_exceptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL, raw_contact_id1 INTEGER REFERENCES raw_contacts(_id), raw_contact_id2 INTEGER REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index1 ON agg_exceptions (raw_contact_id1, raw_contact_id2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1175
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index2 ON agg_exceptions (raw_contact_id2, raw_contact_id1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1181
    const-string v0, "CREATE TABLE IF NOT EXISTS settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1189
    const-string v0, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1193
    const-string v0, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1199
    const-string v0, "CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,firewalltype INTEGER NOT NULL DEFAULT 0,forwarded_call INTEGER NOT NULL DEFAULT 0,contact_id INTEGER NOT NULL DEFAULT -1,number_type INTEGER NOT NULL DEFAULT 0,source_id TEXT,my_number TEXT,mark_deleted INTEGER NOT NULL DEFAULT 0,sync_1 TEXT,sync_2 TEXT,sync_3 INTEGER,countryiso TEXT,voicemail_uri TEXT,is_read INTEGER,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1238
    const-string v0, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT UNIQUE NOT NULL,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1249
    const-string v0, "CREATE TABLE activities (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_id TEXT,in_reply_to TEXT,author_contact_id INTEGER REFERENCES raw_contacts(_id),target_contact_id INTEGER REFERENCES raw_contacts(_id),published INTEGER NOT NULL,thread_published INTEGER NOT NULL,title TEXT NOT NULL,summary TEXT,link TEXT, thumbnail BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1265
    const-string v0, "CREATE TABLE status_updates (status_update_data_id INTEGER PRIMARY KEY REFERENCES data(_id),status TEXT,status_ts INTEGER,status_res_package TEXT, status_label INTEGER, status_icon INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    const-string v0, "CREATE TABLE accounts (account_name TEXT, account_type TEXT, data_set TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    const-string v0, "INSERT INTO accounts VALUES(NULL, NULL, NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createAccountSyncStateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1290
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1293
    const-string v0, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTERGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    const-string v0, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1310
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1311
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1312
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1320
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1322
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    if-eqz v0, :cond_0

    .line 1324
    const-string v0, "ANALYZE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 1334
    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1337
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->onDatabaseCreate(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1340
    :cond_1
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->refreshDatabaseCaches(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 791
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 793
    const-string v0, "ATTACH DATABASE \':memory:\' AS presence_db;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    const-string v0, "CREATE TABLE IF NOT EXISTS presence_db.presence (presence_data_id INTEGER PRIMARY KEY REFERENCES data(_id),protocol INTEGER NOT NULL,custom_protocol TEXT,im_handle TEXT,im_account TEXT,presence_contact_id INTEGER REFERENCES contacts(_id),presence_raw_contact_id INTEGER REFERENCES raw_contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0,UNIQUE(protocol, custom_protocol, im_handle, im_account));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    const-string v0, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex ON presence (presence_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 810
    const-string v0, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex2 ON presence (presence_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 813
    const-string v0, "CREATE TABLE IF NOT EXISTS presence_db.agg_presence (presence_contact_id INTEGER PRIMARY KEY REFERENCES contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 822
    const-string v0, "CREATE TRIGGER presence_db.presence_deleted BEFORE DELETE ON presence_db.presence BEGIN    DELETE FROM agg_presence     WHERE presence_contact_id = (SELECT presence_contact_id FROM presence WHERE presence_raw_contact_id=OLD.presence_raw_contact_id AND NOT EXISTS(SELECT presence_raw_contact_id FROM presence WHERE presence_contact_id=OLD.presence_contact_id AND presence_raw_contact_id!=OLD.presence_raw_contact_id)); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    const-string v0, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id;"

    .line 862
    const-string v0, "CREATE TRIGGER presence_db.presence_inserted AFTER INSERT ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    const-string v0, "CREATE TRIGGER presence_db.presence_updated AFTER UPDATE ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->onDatabaseOpen(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 877
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xca

    const/16 v7, 0x63

    const/16 v3, 0x190

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1932
    if-ge p2, v7, :cond_1

    .line 1933
    const-string v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data will be lost!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-string v0, "DROP TABLE IF EXISTS contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1937
    const-string v0, "DROP TABLE IF EXISTS raw_contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1938
    const-string v0, "DROP TABLE IF EXISTS packages;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1939
    const-string v0, "DROP TABLE IF EXISTS mimetypes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1940
    const-string v0, "DROP TABLE IF EXISTS data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1941
    const-string v0, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1942
    const-string v0, "DROP TABLE IF EXISTS name_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1943
    const-string v0, "DROP TABLE IF EXISTS nickname_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1944
    const-string v0, "DROP TABLE IF EXISTS groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1945
    const-string v0, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1946
    const-string v0, "DROP TABLE IF EXISTS calls;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1947
    const-string v0, "DROP TABLE IF EXISTS settings;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1948
    const-string v0, "DROP TABLE IF EXISTS status_updates;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1953
    const-string v0, "DROP TABLE IF EXISTS agg_exceptions;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2480
    :cond_0
    return-void

    .line 1959
    :cond_1
    const-string v2, "ContactsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    if-ne p2, v7, :cond_62

    .line 1969
    add-int/lit8 v5, p2, 0x1

    move v4, v1

    .line 1972
    :goto_0
    const/16 v2, 0x64

    if-ne v5, v2, :cond_2

    .line 1973
    const-string v2, "CREATE INDEX IF NOT EXISTS mimetypes_mimetype_index ON mimetypes (mimetype,_id);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1977
    const-string v2, "mimetypes"

    const-string v4, "mimetypes_mimetype_index"

    const-string v7, "50 1 1"

    invoke-direct {p0, p1, v2, v4, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 1984
    :cond_2
    const/16 v2, 0x65

    if-ne v5, v2, :cond_3

    .line 1986
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 1989
    :cond_3
    const/16 v2, 0x66

    if-ne v5, v2, :cond_4

    .line 1991
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 1994
    :cond_4
    const/16 v2, 0x67

    if-ne v5, v2, :cond_5

    .line 1996
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 1999
    :cond_5
    const/16 v2, 0x68

    if-eq v5, v2, :cond_6

    const/16 v2, 0xc9

    if-ne v5, v2, :cond_7

    .line 2000
    :cond_6
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2002
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 2005
    :cond_7
    const/16 v2, 0x69

    if-ne v5, v2, :cond_61

    .line 2006
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    move v2, v1

    move v5, v6

    .line 2011
    :goto_1
    if-ne v5, v6, :cond_8

    .line 2012
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2014
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 2017
    :cond_8
    const/16 v6, 0xcb

    if-ne v5, v6, :cond_9

    .line 2019
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 2022
    :cond_9
    const/16 v6, 0xcc

    if-ne v5, v6, :cond_a

    .line 2023
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2025
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 2028
    :cond_a
    const/16 v6, 0xcd

    if-ne v5, v6, :cond_b

    .line 2029
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgrateToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2031
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 2034
    :cond_b
    const/16 v6, 0xce

    if-ne v5, v6, :cond_c

    .line 2035
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2036
    const/16 v5, 0x12c

    .line 2039
    :cond_c
    const/16 v6, 0x12c

    if-ne v5, v6, :cond_d

    .line 2041
    const/16 v5, 0x12d

    move v4, v1

    .line 2044
    :cond_d
    const/16 v6, 0x12d

    if-ne v5, v6, :cond_e

    .line 2046
    const/16 v5, 0x12e

    move v4, v1

    .line 2049
    :cond_e
    const/16 v6, 0x12e

    if-ne v5, v6, :cond_f

    .line 2050
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2051
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2052
    const/16 v5, 0x12f

    .line 2055
    :cond_f
    const/16 v6, 0x12f

    if-ne v5, v6, :cond_10

    .line 2056
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2057
    const/16 v5, 0x130

    .line 2060
    :cond_10
    const/16 v6, 0x130

    if-ne v5, v6, :cond_11

    .line 2062
    const/16 v5, 0x131

    move v2, v1

    .line 2065
    :cond_11
    const/16 v6, 0x131

    if-ne v5, v6, :cond_12

    .line 2066
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2067
    const/16 v5, 0x132

    .line 2070
    :cond_12
    const/16 v6, 0x132

    if-ne v5, v6, :cond_13

    .line 2071
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2072
    const/16 v5, 0x133

    .line 2075
    :cond_13
    const/16 v6, 0x133

    if-ne v5, v6, :cond_14

    .line 2076
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2077
    const/16 v5, 0x134

    .line 2081
    :cond_14
    const/16 v6, 0x15e

    if-ge v5, v6, :cond_15

    .line 2083
    const/16 v5, 0x15f

    move v4, v1

    .line 2086
    :cond_15
    const/16 v6, 0x15f

    if-ne v5, v6, :cond_16

    .line 2088
    const/16 v5, 0x160

    move v2, v1

    .line 2091
    :cond_16
    const/16 v6, 0x160

    if-ne v5, v6, :cond_17

    .line 2092
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2093
    const/16 v5, 0x161

    .line 2097
    :cond_17
    if-ge v5, v3, :cond_18

    .line 2099
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V

    move v4, v1

    move v5, v3

    .line 2103
    :cond_18
    if-ne v5, v3, :cond_19

    .line 2105
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2106
    const/16 v5, 0x191

    move v4, v1

    .line 2109
    :cond_19
    const/16 v3, 0x191

    if-ne v5, v3, :cond_1a

    .line 2110
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2111
    const/16 v5, 0x192

    .line 2114
    :cond_1a
    const/16 v3, 0x192

    if-ne v5, v3, :cond_1b

    .line 2116
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2117
    const/16 v5, 0x193

    move v4, v1

    .line 2120
    :cond_1b
    const/16 v3, 0x193

    if-ne v5, v3, :cond_1c

    .line 2122
    const/16 v5, 0x194

    move v4, v1

    .line 2125
    :cond_1c
    const/16 v3, 0x194

    if-ne v5, v3, :cond_1d

    .line 2127
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion405(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2128
    const/16 v5, 0x195

    move v4, v1

    .line 2131
    :cond_1d
    const/16 v3, 0x195

    if-ne v5, v3, :cond_1e

    .line 2133
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion406(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2134
    const/16 v5, 0x196

    move v4, v1

    .line 2137
    :cond_1e
    const/16 v3, 0x196

    if-ne v5, v3, :cond_1f

    .line 2139
    const/16 v5, 0x197

    move v4, v1

    .line 2142
    :cond_1f
    const/16 v3, 0x197

    if-ne v5, v3, :cond_20

    .line 2144
    const/16 v5, 0x198

    .line 2147
    :cond_20
    const/16 v3, 0x198

    if-ne v5, v3, :cond_21

    .line 2149
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion409(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2150
    const/16 v5, 0x199

    move v4, v1

    .line 2153
    :cond_21
    const/16 v3, 0x199

    if-ne v5, v3, :cond_22

    .line 2155
    const/16 v5, 0x19a

    move v4, v1

    .line 2158
    :cond_22
    const/16 v3, 0x19a

    if-ne v5, v3, :cond_23

    .line 2159
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion411(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2160
    const/16 v5, 0x19b

    .line 2163
    :cond_23
    const/16 v3, 0x19b

    if-ne v5, v3, :cond_24

    .line 2165
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2166
    const/16 v5, 0x19c

    .line 2169
    :cond_24
    const/16 v3, 0x19c

    if-ne v5, v3, :cond_25

    .line 2170
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion413(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2171
    const/16 v5, 0x19d

    .line 2174
    :cond_25
    const/16 v3, 0x19d

    if-ne v5, v3, :cond_60

    .line 2176
    const/16 v5, 0x19e

    move v6, v1

    .line 2179
    :goto_2
    const/16 v2, 0x19e

    if-ne v5, v2, :cond_26

    .line 2180
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion415(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2182
    const/16 v5, 0x19f

    move v4, v1

    .line 2185
    :cond_26
    const/16 v2, 0x19f

    if-ne v5, v2, :cond_27

    .line 2186
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion416(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2187
    const/16 v5, 0x1a0

    .line 2190
    :cond_27
    const/16 v2, 0x1a0

    if-ne v5, v2, :cond_5f

    .line 2192
    const/16 v5, 0x1a1

    move v2, v1

    .line 2196
    :goto_3
    const/16 v3, 0x1f4

    if-ge v5, v3, :cond_5e

    move v3, v1

    .line 2200
    :goto_4
    const/16 v7, 0x1f5

    if-ge v5, v7, :cond_28

    .line 2202
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2203
    const/16 v5, 0x1f5

    move v3, v1

    .line 2206
    :cond_28
    const/16 v7, 0x1f6

    if-ge v5, v7, :cond_29

    .line 2208
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2209
    const/16 v5, 0x1f6

    move v3, v1

    .line 2212
    :cond_29
    const/16 v7, 0x1f7

    if-ge v5, v7, :cond_2a

    .line 2214
    const/16 v5, 0x1f7

    move v3, v1

    .line 2217
    :cond_2a
    const/16 v7, 0x1f8

    if-ge v5, v7, :cond_2b

    .line 2218
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion504(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2219
    const/16 v5, 0x1f8

    .line 2222
    :cond_2b
    const/16 v7, 0x258

    if-ge v5, v7, :cond_2c

    .line 2223
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2225
    const/16 v5, 0x258

    move v4, v1

    .line 2228
    :cond_2c
    const/16 v7, 0x259

    if-ge v5, v7, :cond_2d

    .line 2229
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion601(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2230
    const/16 v5, 0x259

    .line 2233
    :cond_2d
    const/16 v7, 0x25a

    if-ge v5, v7, :cond_2e

    .line 2234
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion602(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2235
    const/16 v5, 0x25a

    .line 2238
    :cond_2e
    const/16 v7, 0x25b

    if-ge v5, v7, :cond_2f

    .line 2240
    const/16 v5, 0x25b

    move v4, v1

    .line 2243
    :cond_2f
    const/16 v7, 0x25c

    if-ge v5, v7, :cond_30

    .line 2244
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion604(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2245
    const/16 v5, 0x25c

    .line 2248
    :cond_30
    const/16 v7, 0x25d

    if-ge v5, v7, :cond_31

    .line 2250
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion605(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2251
    const/16 v5, 0x25d

    move v4, v1

    .line 2254
    :cond_31
    const/16 v7, 0x25e

    if-ge v5, v7, :cond_32

    .line 2257
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion606(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2258
    const/16 v5, 0x25e

    move v2, v1

    move v4, v1

    .line 2261
    :cond_32
    const/16 v7, 0x25f

    if-ge v5, v7, :cond_33

    .line 2263
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion607(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2264
    const/16 v5, 0x25f

    move v4, v1

    .line 2267
    :cond_33
    const/16 v7, 0x260

    if-ge v5, v7, :cond_34

    .line 2269
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion608(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2270
    const/16 v5, 0x260

    move v4, v1

    .line 2273
    :cond_34
    const/16 v7, 0x261

    if-ge v5, v7, :cond_35

    .line 2274
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion609(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2275
    const/16 v5, 0x261

    .line 2278
    :cond_35
    const/16 v7, 0x262

    if-ge v5, v7, :cond_36

    .line 2279
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion610(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2280
    const/16 v5, 0x262

    .line 2283
    :cond_36
    const/16 v7, 0x263

    if-ge v5, v7, :cond_37

    .line 2285
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion611(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2286
    const/16 v5, 0x263

    move v4, v1

    .line 2289
    :cond_37
    const/16 v7, 0x264

    if-ge v5, v7, :cond_38

    .line 2291
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion612(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2292
    const/16 v5, 0x264

    move v4, v1

    .line 2295
    :cond_38
    const/16 v7, 0x265

    if-ge v5, v7, :cond_39

    .line 2296
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion613(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2297
    const/16 v5, 0x265

    .line 2300
    :cond_39
    const/16 v7, 0x266

    if-ge v5, v7, :cond_3a

    .line 2303
    const/16 v5, 0x266

    move v4, v1

    .line 2306
    :cond_3a
    const/16 v7, 0x267

    if-ge v5, v7, :cond_3b

    .line 2307
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion615(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2308
    const/16 v5, 0x267

    .line 2311
    :cond_3b
    const/16 v7, 0x268

    if-ge v5, v7, :cond_3c

    .line 2314
    const/16 v5, 0x268

    move v4, v1

    .line 2317
    :cond_3c
    const/16 v7, 0x269

    if-ge v5, v7, :cond_3d

    .line 2323
    const/16 v5, 0x269

    move v4, v1

    .line 2326
    :cond_3d
    const/16 v7, 0x26a

    if-ge v5, v7, :cond_3e

    .line 2327
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion618(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2328
    const/16 v5, 0x26a

    .line 2331
    :cond_3e
    const/16 v7, 0x26b

    if-ge v5, v7, :cond_3f

    .line 2333
    const/16 v5, 0x26b

    move v4, v1

    .line 2336
    :cond_3f
    const/16 v7, 0x26c

    if-ge v5, v7, :cond_40

    .line 2338
    const/16 v5, 0x26c

    move v4, v1

    .line 2341
    :cond_40
    const/16 v7, 0x26d

    if-ge v5, v7, :cond_41

    .line 2343
    const/16 v5, 0x26d

    move v3, v1

    .line 2346
    :cond_41
    const/16 v7, 0x26e

    if-ge v5, v7, :cond_42

    .line 2347
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion622(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2348
    const/16 v5, 0x26e

    .line 2351
    :cond_42
    const/16 v7, 0x26f

    if-ge v5, v7, :cond_43

    .line 2354
    const/16 v5, 0x26f

    move v3, v1

    .line 2357
    :cond_43
    const/16 v7, 0x270

    if-ge v5, v7, :cond_45

    .line 2358
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion624(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2359
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v5

    if-eqz v5, :cond_44

    move v0, v1

    .line 2362
    :cond_44
    const/16 v5, 0x270

    .line 2365
    :cond_45
    const/16 v7, 0x271

    if-ge v5, v7, :cond_46

    .line 2366
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion625(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2369
    const/16 v5, 0x271

    move v3, v1

    move v4, v1

    .line 2372
    :cond_46
    const/16 v7, 0x272

    if-ge v5, v7, :cond_47

    .line 2374
    const/16 v5, 0x272

    move v4, v1

    .line 2377
    :cond_47
    const/16 v7, 0x273

    if-ge v5, v7, :cond_48

    .line 2381
    const/16 v5, 0x273

    move v3, v1

    move v4, v1

    .line 2384
    :cond_48
    const/16 v7, 0x274

    if-ge v5, v7, :cond_5d

    .line 2385
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion628(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2387
    const/16 v4, 0x274

    move v5, v1

    .line 2390
    :goto_5
    const/16 v7, 0x275

    if-ge v4, v7, :cond_49

    .line 2391
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion629(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2392
    const/16 v4, 0x275

    .line 2395
    :cond_49
    const/16 v7, 0x276

    if-ge v4, v7, :cond_4b

    .line 2396
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v4

    if-eqz v4, :cond_4a

    move v0, v1

    .line 2399
    :cond_4a
    const/16 v4, 0x276

    .line 2402
    :cond_4b
    const/16 v7, 0x277

    if-ge v4, v7, :cond_4c

    .line 2403
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion631(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2404
    const/16 v4, 0x277

    .line 2407
    :cond_4c
    const/16 v7, 0x278

    if-ge v4, v7, :cond_4e

    .line 2408
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 2409
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion632(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 2412
    :cond_4d
    const/16 v4, 0x278

    .line 2415
    :cond_4e
    const/16 v7, 0x279

    if-ge v4, v7, :cond_50

    .line 2416
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v4

    if-eqz v4, :cond_4f

    move v0, v1

    .line 2419
    :cond_4f
    const/16 v4, 0x279

    .line 2422
    :cond_50
    const/16 v7, 0x27a

    if-ge v4, v7, :cond_52

    .line 2423
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2424
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion634(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2426
    :cond_51
    const/16 v4, 0x27a

    .line 2429
    :cond_52
    const/16 v7, 0x27b

    if-ge v4, v7, :cond_53

    .line 2431
    const/16 v4, 0x27b

    move v3, v1

    .line 2434
    :cond_53
    const/16 v7, 0x27c

    if-ge v4, v7, :cond_5c

    .line 2435
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v4

    if-eqz v4, :cond_54

    move v0, v1

    .line 2438
    :cond_54
    const/16 v4, 0x27c

    move v8, v0

    move v0, v4

    move v4, v8

    .line 2441
    :goto_6
    const/16 v7, 0x27d

    if-ge v0, v7, :cond_5b

    .line 2442
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2443
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion637(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2446
    :cond_55
    const/16 v0, 0x27d

    move v3, v0

    move v0, v1

    .line 2449
    :goto_7
    if-eqz v5, :cond_5a

    .line 2450
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2451
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2452
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2453
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2454
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2456
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 2459
    :goto_8
    if-eqz v1, :cond_56

    .line 2460
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2463
    :cond_56
    if-eqz v6, :cond_57

    .line 2464
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2467
    :cond_57
    if-eqz v0, :cond_58

    .line 2468
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2469
    const-string v0, "search_index"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    :cond_58
    if-eqz v4, :cond_59

    .line 2473
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->onDatabaseUpgrade(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2476
    :cond_59
    if-eq v3, p3, :cond_0

    .line 2477
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error upgrading the database to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    move v1, v2

    goto :goto_8

    :cond_5b
    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_7

    :cond_5c
    move v8, v0

    move v0, v4

    move v4, v8

    goto :goto_6

    :cond_5d
    move v8, v4

    move v4, v5

    move v5, v8

    goto/16 :goto_5

    :cond_5e
    move v3, v0

    goto/16 :goto_4

    :cond_5f
    move v2, v0

    goto/16 :goto_3

    :cond_60
    move v6, v2

    goto/16 :goto_2

    :cond_61
    move v2, v0

    goto/16 :goto_1

    :cond_62
    move v4, v0

    move v5, p2

    goto/16 :goto_0
.end method

.method querySearchIndexContentForTest(J)Ljava/lang/String;
    .locals 5
    .parameter "contactId"

    .prologue
    .line 5338
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT content FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method querySearchIndexTokensForTest(J)Ljava/lang/String;
    .locals 5
    .parameter "contactId"

    .prologue
    .line 5346
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT tokens FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawContactHasSuperPrimary(JJ)Z
    .locals 7
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5319
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT EXISTS(SELECT 1 FROM data WHERE raw_contact_id=? AND mimetype_id=? AND is_super_primary<>0)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5326
    .local v0, existsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5329
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 5327
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 5329
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_1
    move v1, v2

    .line 5327
    goto :goto_0
.end method

.method public rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3105
    const-string v1, "raw_contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3108
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3109
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3110
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3113
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3115
    return-void
.end method

.method public removeContactIfSingleton(J)V
    .locals 5
    .parameter

    .prologue
    .line 4681
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT contact_id FROM raw_contacts WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT contacts1._id FROM raw_contacts contacts1 JOIN raw_contacts contacts2 ON (contacts1.contact_id=contacts2.contact_id) WHERE contacts1._id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND contacts2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM contacts WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND NOT EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4697
    return-void
.end method

.method public replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .parameter "dataId"
    .parameter "timestamp"
    .parameter "status"
    .parameter "resPackage"
    .parameter "iconResource"
    .parameter "labelResource"

    .prologue
    .line 4827
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 4828
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR REPLACE INTO status_updates(status_update_data_id, status_ts,status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 4838
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4839
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4840
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4841
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4842
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4843
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4844
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4845
    return-void
.end method

.method public resetNameVerifiedForOtherRawContacts(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 4906
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE raw_contacts SET name_verified=0 WHERE contact_id=(SELECT contact_id FROM raw_contacts WHERE _id=?) AND _id!=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 4915
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4916
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4917
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4918
    return-void
.end method

.method public setIsPrimary(JJJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "mimeTypeId"

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5176
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5182
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5183
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5184
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5185
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5186
    return-void
.end method

.method public setIsSuperPrimary(JJJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "mimeTypeId"

    .prologue
    .line 5212
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5213
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_super_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id =(SELECT contact_id FROM raw_contacts WHERE _id=?))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5225
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5226
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5227
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5228
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5229
    return-void
.end method

.method public setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 3047
    const-string v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3050
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3051
    invoke-virtual {v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 3052
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3054
    :try_start_0
    const-string v3, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3055
    const-string v3, "DROP INDEX raw_contact_sort_key2_index"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3056
    const-string v3, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3058
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllCallLogCachedLocationInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3059
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3060
    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3061
    invoke-virtual {p0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    .line 3062
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3063
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3065
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3068
    const-string v2, "ContactsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale change completed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    return-void

    .line 3065
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 4723
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 4724
    return-void
.end method

.method public updateAllVisible()V
    .locals 3

    .prologue
    .line 4310
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4311
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "txContext"
    .parameter "contactId"

    .prologue
    .line 4325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    .line 4326
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4330
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4331
    invoke-direct {p0, v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4333
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 4334
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v5

    .line 4339
    const-string v2, "SELECT EXISTS (SELECT contact_id FROM raw_contacts JOIN data   ON (raw_contacts._id=raw_contact_id) WHERE contact_id=?   AND mimetype_id=?) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?   AND NOT EXISTS (SELECT _id  FROM groups  WHERE raw_contacts.account_name = groups.account_name  AND raw_contacts.account_type = groups.account_type  AND (raw_contacts.data_set = groups.data_set OR raw_contacts.data_set IS NULL AND groups.data_set IS NULL)  AND auto_add != 0)) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?   AND raw_contacts.account_name IS NULL    AND raw_contacts.account_type IS NULL   AND raw_contacts.data_set IS NULL)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const/4 v5, 0x3

    aput-object v4, v7, v5

    invoke-static {v3, v2, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    move v2, v1

    .line 4380
    :goto_0
    if-eqz p4, :cond_1

    .line 4381
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    .line 4382
    if-ne v5, v2, :cond_1

    .line 4399
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 4339
    goto :goto_0

    .line 4387
    :cond_1
    if-eqz v2, :cond_2

    .line 4388
    const-string v2, "INSERT OR IGNORE INTO default_directory VALUES(?)"

    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v0

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4390
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForContact(J)V

    :goto_2
    move v0, v1

    .line 4399
    goto :goto_1

    .line 4392
    :cond_2
    const-string v2, "DELETE FROM default_directory WHERE _id=?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v0

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4395
    const-string v2, "DELETE FROM search_index WHERE contact_id=CAST(? AS int)"

    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v0

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter "txContext"
    .parameter "contactId"

    .prologue
    .line 4317
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    move-result v0

    return v0
.end method

.method public updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 26
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 4965
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    .line 4968
    :cond_0
    const/4 v6, 0x0

    .line 4969
    .local v6, bestDisplayNameSource:I
    const/4 v7, 0x0

    .line 4970
    .local v7, bestName:Lcom/android/providers/contacts/NameSplitter$Name;
    const/4 v4, 0x0

    .line 4971
    .local v4, bestDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4972
    .local v8, bestPhoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 4973
    .local v11, displayName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 4975
    .local v9, bestPhoneticNameStyle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 4976
    const-string v22, "SELECT mimetype_id,is_primary,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 FROM data WHERE raw_contact_id=? AND (data1 NOT NULL OR data4 NOT NULL)"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, c:Landroid/database/Cursor;
    move-object v5, v4

    .line 4978
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .local v5, bestDisplayName:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 4979
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 4980
    .local v15, mimeType:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDisplayNameSourceForMimeTypeId(I)I

    move-result v21

    .line 4981
    .local v21, source:I
    move/from16 v0, v21

    if-lt v0, v6, :cond_1

    if-eqz v21, :cond_1

    .line 4985
    move/from16 v0, v21

    if-ne v0, v6, :cond_2

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_1

    .line 4990
    :cond_2
    int-to-long v0, v15

    move-wide/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    .line 4992
    if-eqz v7, :cond_4

    .line 4993
    new-instance v16, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v16 .. v16}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 4998
    .local v16, name:Lcom/android/providers/contacts/NameSplitter$Name;
    :goto_1
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4999
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 5000
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 5001
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 5002
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 5003
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 5004
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5007
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 5008
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 5009
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 5010
    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 5013
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/NameSplitter$Name;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    .line 5014
    move/from16 v6, v21

    .line 5015
    move-object/from16 v7, v16

    :cond_3
    move-object v4, v5

    .end local v5           #bestDisplayName:Ljava/lang/String;
    .end local v16           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    :goto_4
    move-object v5, v4

    .line 5054
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 4995
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    move-object/from16 v16, v0

    .line 4996
    .restart local v16       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 5057
    .end local v15           #mimeType:I
    .end local v16           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v21           #source:I
    :catchall_0
    move-exception v22

    move-object v4, v5

    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v22

    .line 5004
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    .restart local v15       #mimeType:I
    .restart local v16       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .restart local v21       #source:I
    :cond_5
    const/16 v22, 0xb

    :try_start_1
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    goto :goto_2

    .line 5010
    :cond_6
    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    goto :goto_3

    .line 5017
    .end local v16           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_7
    int-to-long v0, v15

    move-wide/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForOrganization()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_a

    .line 5018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 5019
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 5021
    move/from16 v6, v21

    .line 5022
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5024
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    const/16 v22, 0x9

    :try_start_2
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5026
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_8

    const/4 v9, 0x0

    :goto_6
    goto/16 :goto_4

    :cond_8
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    goto :goto_6

    .line 5031
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_9
    const/16 v22, 0x5

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 5033
    move/from16 v6, v21

    .line 5034
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 5036
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 5037
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5044
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 5045
    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 5047
    move/from16 v6, v21

    .line 5048
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5050
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 5051
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5057
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .end local v15           #mimeType:I
    .end local v21           #source:I
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5064
    const/16 v18, 0x0

    .line 5065
    .local v18, sortKeyPrimary:Ljava/lang/String;
    const/16 v17, 0x0

    .line 5066
    .local v17, sortKeyAlternative:Ljava/lang/String;
    const/4 v14, 0x0

    .line 5068
    .local v14, displayNameStyle:I
    const/16 v22, 0x28

    move/from16 v0, v22

    if-ne v6, v0, :cond_14

    .line 5069
    iget v14, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5070
    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v14, v0, :cond_c

    if-nez v14, :cond_d

    .line 5072
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v14

    .line 5073
    iput v14, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5076
    :cond_d
    iget v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 5077
    move-object v13, v11

    .line 5082
    .local v13, displayNamePrimary:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 5084
    .local v12, displayNameAlternative:Ljava/lang/String;
    iget-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 5085
    move-object/from16 v20, v13

    .line 5086
    .local v20, sortNamePrimary:Ljava/lang/String;
    move-object/from16 v19, v12

    .line 5092
    .local v19, sortNameAlternative:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v8

    .line 5093
    iget v9, v7, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 5099
    :goto_9
    if-eqz v8, :cond_15

    .line 5100
    move-object/from16 v17, v8

    move-object/from16 v18, v8

    .line 5101
    if-nez v9, :cond_e

    .line 5102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v9

    .line 5131
    :cond_e
    :goto_a
    if-nez v18, :cond_f

    sget-object v22, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 5132
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 5137
    :cond_f
    if-nez v18, :cond_10

    .line 5138
    move-object/from16 v18, v20

    .line 5139
    move-object/from16 v17, v19

    .line 5142
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    if-nez v22, :cond_11

    .line 5143
    const-string v22, "UPDATE raw_contacts SET display_name_source=?,display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 5156
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    int-to-long v0, v6

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    int-to-long v0, v9

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5165
    return-void

    .line 5079
    .end local v12           #displayNameAlternative:Ljava/lang/String;
    .end local v13           #displayNamePrimary:Ljava/lang/String;
    .end local v19           #sortNameAlternative:Ljava/lang/String;
    .end local v20           #sortNamePrimary:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #displayNamePrimary:Ljava/lang/String;
    goto/16 :goto_7

    .line 5088
    .restart local v12       #displayNameAlternative:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v20

    .line 5089
    .restart local v20       #sortNamePrimary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v19

    .restart local v19       #sortNameAlternative:Ljava/lang/String;
    goto/16 :goto_8

    .line 5095
    .end local v12           #displayNameAlternative:Ljava/lang/String;
    .end local v13           #displayNamePrimary:Ljava/lang/String;
    .end local v19           #sortNameAlternative:Ljava/lang/String;
    .end local v20           #sortNamePrimary:Ljava/lang/String;
    :cond_14
    move-object v12, v5

    .restart local v12       #displayNameAlternative:Ljava/lang/String;
    move-object v13, v5

    .line 5096
    .restart local v13       #displayNamePrimary:Ljava/lang/String;
    move-object/from16 v19, v5

    .restart local v19       #sortNameAlternative:Ljava/lang/String;
    move-object/from16 v20, v5

    .restart local v20       #sortNamePrimary:Ljava/lang/String;
    goto/16 :goto_9

    .line 5105
    :cond_15
    if-nez v14, :cond_18

    .line 5106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v14

    .line 5107
    if-eqz v14, :cond_16

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_17

    .line 5109
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v9}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v14

    .line 5112
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v14

    .line 5115
    :cond_18
    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v14, v0, :cond_19

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    .line 5117
    :cond_19
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    goto/16 :goto_a

    .line 5057
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .end local v12           #displayNameAlternative:Ljava/lang/String;
    .end local v13           #displayNamePrimary:Ljava/lang/String;
    .end local v14           #displayNameStyle:I
    .end local v17           #sortKeyAlternative:Ljava/lang/String;
    .end local v18           #sortKeyPrimary:Ljava/lang/String;
    .end local v19           #sortNameAlternative:Ljava/lang/String;
    .end local v20           #sortNamePrimary:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    .restart local v15       #mimeType:I
    .restart local v21       #source:I
    :catchall_1
    move-exception v22

    goto/16 :goto_5

    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_1a
    move-object v4, v5

    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public wipeData()V
    .locals 2

    .prologue
    .line 4080
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4082
    const-string v1, "DELETE FROM accounts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4083
    const-string v1, "INSERT INTO accounts VALUES(NULL, NULL, NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4085
    const-string v1, "DELETE FROM contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4086
    const-string v1, "DELETE FROM raw_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4087
    const-string v1, "DELETE FROM stream_items;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4088
    const-string v1, "DELETE FROM stream_item_photos;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4089
    const-string v1, "DELETE FROM photo_files;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4090
    const-string v1, "DELETE FROM data;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4091
    const-string v1, "DELETE FROM phone_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4092
    const-string v1, "DELETE FROM name_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4093
    const-string v1, "DELETE FROM groups;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4094
    const-string v1, "DELETE FROM agg_exceptions;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4095
    const-string v1, "DELETE FROM settings;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4096
    const-string v1, "DELETE FROM activities;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4097
    const-string v1, "DELETE FROM calls;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4098
    const-string v1, "DELETE FROM directories;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4099
    const-string v1, "DELETE FROM search_index;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4102
    const-string v1, "DELETE FROM t9_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4106
    :cond_0
    return-void
.end method
