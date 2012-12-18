.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private mUpdatingEssentialInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 198
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    .line 207
    return-void
.end method

.method static synthetic access$002(Lcom/android/providers/contacts/GlobalSearchSupport;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    return p1
.end method

.method private buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "searchClause"
    .parameter "projection"

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 289
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v2, -0x7

    const v3, 0x7f04000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 291
    const/4 v2, -0x6

    const v3, 0x7f04000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 293
    const/16 v2, -0x9

    const v3, 0x7f04000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 295
    return-object v0
.end method

.method private buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "filter"
    .parameter "limit"

    .prologue
    .line 417
    new-instance v11, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_5

    move-object/from16 v1, p2

    :goto_0
    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 419
    .local v11, cursor:Landroid/database/MatrixCursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    .line 421
    .local v12, haveFilter:Z
    :goto_1
    const-string v1, "SELECT _id, lookup, photo_thumb_uri, display_name, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence, last_time_contacted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    if-eqz v12, :cond_0

    .line 429
    const-string v1, ", snippet"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_0
    const-string v1, " FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, "view_contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, " AS contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    if-eqz v12, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u2026"

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 439
    :cond_1
    if-eqz p3, :cond_2

    .line 440
    const-string v1, " WHERE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_2
    const-string v1, " ORDER BY (CASE WHEN contacts.starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),contacts.times_contacted DESC, contacts.display_name, contacts._id"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    if-eqz p5, :cond_3

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 447
    .local v10, c:Landroid/database/Cursor;
    new-instance v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V

    .line 448
    .local v13, suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 450
    :goto_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 451
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 452
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 453
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 454
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 455
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    :goto_3
    iput v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 456
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    .line 457
    if-eqz v12, :cond_4

    .line 458
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->shortenSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 460
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 463
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 417
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #cursor:Landroid/database/MatrixCursor;
    .end local v12           #haveFilter:Z
    .end local v13           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_5
    sget-object v1, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 420
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v11       #cursor:Landroid/database/MatrixCursor;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 455
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #haveFilter:Z
    .restart local v13       #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_7
    const/4 v1, 0x4

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_3

    .line 463
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 465
    return-object v11
.end method

.method private buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "searchClause"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 379
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 383
    .local v4, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v2, dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const v6, 0x60c01a0

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, s:Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 387
    .local v3, i:I
    if-gez v3, :cond_0

    .line 388
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :goto_0
    const v6, 0x602016c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v0, createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const v6, 0x7f04000d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const v6, 0x602016d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    const-string v6, "_-1"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v1, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 409
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 410
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 412
    return-object v1

    .line 391
    .end local v0           #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :cond_0
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private closeCursorIfNotNull(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_0
    return-void
.end method

.method private getCallLog(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 329
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/T9SearchSupport;->getCallLog(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .parameter "number"
    .parameter "name"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 299
    array-length v2, p4

    new-array v1, v2, [Ljava/lang/Object;

    .line 300
    .local v1, list:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 302
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 303
    aget-object v2, p4, v0

    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 302
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    aget-object v2, p4, v0

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    aput-object p2, v1, v0

    goto :goto_1

    .line 307
    :cond_1
    aget-object v2, p4, v0

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    aput-object p3, v1, v0

    goto :goto_1

    .line 309
    :cond_2
    aget-object v2, p4, v0

    const-string v3, "call_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 312
    :cond_3
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 316
    :cond_4
    return-object v1
.end method

.method private queryT9(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "db"
    .parameter "projection"
    .parameter "key"
    .parameter "limit"

    .prologue
    .line 324
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->query(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "db"
    .parameter "projection"
    .parameter "key"
    .parameter "limit"

    .prologue
    .line 320
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->query(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private shortenSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "snippet"

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 469
    if-nez p1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-object v9

    .line 473
    :cond_1
    const/4 v3, 0x0

    .line 474
    .local v3, from:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 475
    .local v8, to:I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 476
    .local v7, start:I
    if-eq v7, v10, :cond_0

    .line 480
    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 481
    .local v2, firstNl:I
    if-eq v2, v10, :cond_2

    .line 482
    add-int/lit8 v3, v2, 0x1

    .line 484
    :cond_2
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 485
    .local v1, end:I
    if-eq v1, v10, :cond_3

    .line 486
    invoke-virtual {p1, v12, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 487
    .local v5, lastNl:I
    if-eq v5, v10, :cond_3

    .line 488
    move v8, v5

    .line 492
    .end local v5           #lastNl:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v6, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 494
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 495
    .local v0, c:C
    if-eq v0, v11, :cond_4

    if-eq v0, v11, :cond_4

    .line 496
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 499
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private updateEssentialInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/contacts/GlobalSearchSupport$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/GlobalSearchSupport$1;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "projection"
    .parameter "lookupKey"
    .parameter "filter"

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 360
    .local v6, contactId:J
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 357
    .end local v6           #contactId:J
    :catch_0
    move-exception v8

    .line 358
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v6, -0x1

    .restart local v6       #contactId:J
    goto :goto_0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "limit"

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, searchClause:Ljava/lang/String;
    const-string v3, "(strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000"

    .line 221
    .local v3, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 224
    :goto_1
    return-object v0

    .line 217
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #searchClause:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 218
    .restart local v4       #searchClause:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public handleT9SearchQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 250
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/GlobalSearchSupport;->updateEssentialInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 251
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->getCallLog(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 282
    :cond_0
    :goto_0
    return-object v7

    .line 254
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, searchClause:Ljava/lang/String;
    const/4 v7, 0x0

    .line 256
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    aget-char v1, v1, v2

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    .line 257
    new-instance v8, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v8, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 258
    .local v8, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v1, -0x8

    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v9, v2, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 262
    move-object v7, v8

    .line 263
    goto :goto_0

    .end local v8           #matrixCursor:Landroid/database/MatrixCursor;
    :cond_2
    if-eqz v9, :cond_4

    const-string v1, "#"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, searchForNumber:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p3, v10, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 269
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 271
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 272
    invoke-direct {p0, v10, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 275
    .end local v10           #searchForNumber:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p3, v9, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :cond_5
    invoke-direct {p0, v9, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0
.end method
