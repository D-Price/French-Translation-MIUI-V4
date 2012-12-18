.class Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/CallLogInsertionHelper;


# static fields
.field private static sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 58
    iput-object p1, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    const-class v1, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, countryIso:Ljava/lang/String;
    const-string v4, "countryiso"

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v4, "number"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v3

    .line 80
    .local v3, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, normalizedNumber:Ljava/lang/String;
    const-string v4, "normalized_number"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "matched_number"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 84
    return-void
.end method
