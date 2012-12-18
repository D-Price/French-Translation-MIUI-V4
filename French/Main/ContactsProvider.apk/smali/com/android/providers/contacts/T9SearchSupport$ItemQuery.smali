.class public abstract Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemQuery"
.end annotation


# static fields
.field public static final QUERY_SQL_TEMPLATE_ALL:Ljava/lang/String;

.field public static final QUERY_SQL_TEMPLATE_CONTACT_ID:Ljava/lang/String;

.field public static final QUERY_SQL_TEMPLATE_DATA_ID:Ljava/lang/String;

.field public static final QUERY_SQL_TEMPLATE_RAW_CONTACT_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const-string v0, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.phonetic_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%s OR data.mimetype_id=%s)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "raw_contacts.deleted=0"

    aput-object v2, v1, v3

    const-string v2, "%d"

    aput-object v2, v1, v4

    const-string v2, "%d"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_ALL:Ljava/lang/String;

    .line 70
    const-string v0, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.phonetic_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%s OR data.mimetype_id=%s)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "view_contacts._id=?"

    aput-object v2, v1, v3

    const-string v2, "%d"

    aput-object v2, v1, v4

    const-string v2, "%d"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_CONTACT_ID:Ljava/lang/String;

    .line 71
    const-string v0, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.phonetic_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%s OR data.mimetype_id=%s)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "raw_contacts._id=?"

    aput-object v2, v1, v3

    const-string v2, "%d"

    aput-object v2, v1, v4

    const-string v2, "%d"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_RAW_CONTACT_ID:Ljava/lang/String;

    .line 72
    const-string v0, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.phonetic_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%s OR data.mimetype_id=%s)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "data._id=?"

    aput-object v2, v1, v3

    const-string v2, "%d"

    aput-object v2, v1, v4

    const-string v2, "%d"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_DATA_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
