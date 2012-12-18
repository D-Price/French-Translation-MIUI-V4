.class public Lcom/android/providers/contacts/t9/T9Cache;
.super Ljava/lang/Object;
.source "T9Cache.java"


# instance fields
.field private mQuery:Ljava/lang/String;

.field private mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    .line 18
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/android/providers/contacts/t9/T9MatchResultList;

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56
    .local v2, minLength:I
    const/4 v1, -0x1

    .line 57
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    if-ltz v1, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 64
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 65
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 71
    :cond_1
    return v1

    .line 64
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getCachedResult(I)Lcom/android/providers/contacts/t9/T9MatchResultList;
    .locals 1
    .parameter "index"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/android/providers/contacts/t9/T9MatchResultList;)V
    .locals 4
    .parameter "key"
    .parameter "results"

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 32
    .local v1, minLength:I
    if-lez v1, :cond_3

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 48
    .end local v0           #i:I
    :goto_1
    return-void

    .line 39
    .restart local v0       #i:I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 40
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9MatchResultList;->recycle()V

    .line 42
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 46
    .end local v0           #i:I
    :cond_3
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9Cache;->mQuery:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Cache;->mResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-object p2, v2, v3

    goto :goto_1
.end method
