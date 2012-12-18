.class Lcom/android/providers/contacts/t9/T9NumberMatchResult;
.super Lcom/android/providers/contacts/t9/T9MatchResult;
.source "T9MatchResult.java"


# static fields
.field private static sResult:Lcom/android/providers/contacts/t9/T9NumberMatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    return-void
.end method

.method private constructor <init>(Lcom/android/providers/contacts/t9/T9Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/t9/T9MatchResult;-><init>(Lcom/android/providers/contacts/t9/T9Item;)V

    .line 178
    return-void
.end method

.method public static createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NumberMatchResult;
    .locals 3
    .parameter

    .prologue
    .line 206
    const-class v1, Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    monitor-enter v1

    .line 207
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    .line 208
    const/4 v2, 0x0

    sput-object v2, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/t9/T9NumberMatchResult;-><init>(Lcom/android/providers/contacts/t9/T9Item;)V

    .line 215
    :goto_0
    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 213
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->setItem(Lcom/android/providers/contacts/t9/T9Item;)V

    goto :goto_0
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatchDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatchLevel()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 197
    const-class v1, Lcom/android/providers/contacts/t9/T9NameMatchResult;

    monitor-enter v1

    .line 198
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->setItem(Lcom/android/providers/contacts/t9/T9Item;)V

    .line 199
    sput-object p0, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
