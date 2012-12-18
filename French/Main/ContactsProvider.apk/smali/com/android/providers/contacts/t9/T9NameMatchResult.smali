.class Lcom/android/providers/contacts/t9/T9NameMatchResult;
.super Lcom/android/providers/contacts/t9/T9MatchResult;
.source "T9MatchResult.java"


# static fields
.field private static sResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;


# instance fields
.field private mDetail:Ljava/lang/String;

.field private mDisplayString:Ljava/lang/String;

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;

    return-void
.end method

.method private constructor <init>(Lcom/android/providers/contacts/t9/T9Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/t9/T9MatchResult;-><init>(Lcom/android/providers/contacts/t9/T9Item;)V

    .line 106
    return-void
.end method

.method public static createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NameMatchResult;
    .locals 3
    .parameter

    .prologue
    .line 161
    const-class v1, Lcom/android/providers/contacts/t9/T9NameMatchResult;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;

    .line 163
    const/4 v2, 0x0

    sput-object v2, Lcom/android/providers/contacts/t9/T9NameMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/providers/contacts/t9/T9NameMatchResult;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;-><init>(Lcom/android/providers/contacts/t9/T9Item;)V

    .line 170
    :goto_0
    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->setItem(Lcom/android/providers/contacts/t9/T9Item;)V

    goto :goto_0
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mDisplayString:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchLevel()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mLevel:I

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 152
    const-class v1, Lcom/android/providers/contacts/t9/T9NameMatchResult;

    monitor-enter v1

    .line 153
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->setItem(Lcom/android/providers/contacts/t9/T9Item;)V

    .line 154
    sput-object p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->sResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMatchInfo(IIILjava/util/BitSet;)V
    .locals 6
    .parameter "matchCount"
    .parameter "begin"
    .parameter "end"
    .parameter "matchDetail"

    .prologue
    const/4 v5, 0x0

    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, wordCount:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iget-object v3, v3, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-le v3, v4, :cond_1

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    if-le v2, p1, :cond_1

    .line 119
    :cond_0
    if-le v2, p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput v3, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mLevel:I

    .line 121
    if-eqz p4, :cond_5

    .line 122
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    .local v0, builder:Ljava/lang/StringBuilder;
    move v1, p2

    :goto_2
    if-ge v1, p3, :cond_4

    .line 124
    sub-int v3, v1, p2

    invoke-virtual {p4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x31

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    .line 124
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x30

    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mDetail:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iget-object v3, v3, Lcom/android/providers/contacts/t9/T9Item;->mDisplayString:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mDisplayString:Ljava/lang/String;

    .line 133
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :goto_4
    return-void

    .line 130
    :cond_5
    iput-object v5, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mDetail:Ljava/lang/String;

    .line 131
    iput-object v5, p0, Lcom/android/providers/contacts/t9/T9NameMatchResult;->mDisplayString:Ljava/lang/String;

    goto :goto_4
.end method
