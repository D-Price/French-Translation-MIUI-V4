.class public Lcom/android/providers/contacts/t9/T9Item;
.super Ljava/lang/Object;
.source "T9Item.java"


# instance fields
.field public mContactId:J

.field public mData:Ljava/lang/String;

.field public mDataId:J

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayString:Ljava/lang/String;

.field public mKeyType:J

.field public mNormalizedData:Ljava/lang/String;

.field public mPhotoId:J

.field public mRawContactId:J

.field public mT9Key:Ljava/lang/String;

.field public mTimesContacted:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "dataId"
    .parameter "contactId"
    .parameter "rawContactId"
    .parameter "data"
    .parameter "normalizedData"
    .parameter "displayName"
    .parameter "photoId"
    .parameter "timesContacted"
    .parameter "t9Key"
    .parameter "displayString"
    .parameter "keyType"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    .line 105
    iput-wide p3, p0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    .line 106
    iput-wide p5, p0, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    .line 107
    iput-object p7, p0, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    .line 108
    iput-object p8, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    .line 109
    iput-object p9, p0, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    .line 110
    iput-wide p10, p0, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    .line 111
    iput-wide p12, p0, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    .line 112
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mDisplayString:Ljava/lang/String;

    .line 114
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mKeyType:J

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    instance-of v3, p1, Lcom/android/providers/contacts/t9/T9Item;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 141
    check-cast v0, Lcom/android/providers/contacts/t9/T9Item;

    .line 142
    .local v0, item:Lcom/android/providers/contacts/t9/T9Item;
    iget-wide v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    iget-wide v5, v0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    iget-wide v5, v0, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #item:Lcom/android/providers/contacts/t9/T9Item;
    :cond_3
    move v1, v2

    .line 145
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 125
    iget-wide v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v0, v3

    .line 126
    .local v0, h:I
    iget-wide v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    long-to-int v1, v3

    .line 127
    .local v1, h1:I
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 129
    .local v2, h2:I
    :goto_0
    shl-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0xa

    xor-int v0, v3, v4

    .line 130
    shl-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, v2, 0x4

    add-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0xa

    xor-int v0, v3, v4

    .line 131
    return v0

    .line 127
    .end local v2           #h2:I
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isContactSPDivider()Z
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    const-wide/16 v2, -0x63

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSPItem()Z
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
