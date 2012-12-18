.class public Lcom/android/providers/contacts/t9/T9Matcher;
.super Ljava/lang/Object;
.source "T9Matcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Lcom/android/providers/contacts/t9/T9Item;CZ)Lcom/android/providers/contacts/t9/T9MatchResult;
    .locals 8
    .parameter "item"
    .parameter "key"
    .parameter "nameOnly"

    .prologue
    const/16 v7, 0x3b

    .line 151
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result p1

    .line 152
    iget-object v5, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 153
    .local v3, index:I
    if-gez v3, :cond_1

    .line 154
    if-eqz p2, :cond_0

    const/4 v5, 0x0

    .line 169
    :goto_0
    return-object v5

    .line 154
    :cond_0
    invoke-static {p0, p1}, Lcom/android/providers/contacts/t9/T9Matcher;->matchNumber(Lcom/android/providers/contacts/t9/T9Item;C)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v5

    goto :goto_0

    .line 157
    :cond_1
    move v0, v3

    .line 158
    .local v0, begin:I
    :goto_1
    if-lez v0, :cond_2

    iget-object v5, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 159
    :cond_2
    iget-object v5, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 160
    .local v2, end:I
    if-gez v2, :cond_3

    .line 161
    iget-object v5, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 164
    :cond_3
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableBitSet()Ljava/util/BitSet;

    move-result-object v1

    .line 165
    .local v1, bitSet:Ljava/util/BitSet;
    sub-int v5, v3, v0

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 166
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NameMatchResult;

    move-result-object v4

    .line 167
    .local v4, result:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0, v2, v1}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->setMatchInfo(IIILjava/util/BitSet;)V

    .line 168
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/BitSet;)V

    move-object v5, v4

    .line 169
    goto :goto_0
.end method

.method public static match(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;Z)Lcom/android/providers/contacts/t9/T9MatchResult;
    .locals 9
    .parameter "item"
    .parameter "key"
    .parameter "nameOnly"

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, pbegin:I
    const/4 v4, 0x0

    .line 175
    .local v4, primaryResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    const/4 v5, 0x0

    .line 177
    .local v5, secondaryResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableBitSet()Ljava/util/BitSet;

    move-result-object v1

    .line 178
    .local v1, matchDetail:Ljava/util/BitSet;
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 179
    iget-object v7, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 180
    .local v3, pend:I
    if-gez v3, :cond_0

    .line 181
    iget-object v7, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 184
    :cond_0
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 186
    iget-object v7, p0, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-static {v7, v2, v3, p1, v1}, Lcom/android/providers/contacts/t9/T9Matcher;->matchName(Ljava/lang/String;IILjava/lang/String;Ljava/util/BitSet;)I

    move-result v0

    .line 187
    .local v0, matchCount:I
    if-lez v0, :cond_5

    .line 189
    if-nez v4, :cond_4

    .line 190
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NameMatchResult;

    move-result-object v4

    .line 191
    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->setMatchInfo(IIILjava/util/BitSet;)V

    .line 192
    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->getMatchLevel()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 212
    .end local v0           #matchCount:I
    .end local v3           #pend:I
    :cond_1
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/BitSet;)V

    .line 213
    if-eqz v5, :cond_2

    .line 214
    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->recycle()V

    .line 217
    :cond_2
    if-nez v4, :cond_3

    if-nez p2, :cond_3

    invoke-static {p0, p1}, Lcom/android/providers/contacts/t9/T9Matcher;->matchNumber(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v4

    .end local v4           #primaryResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    :cond_3
    return-object v4

    .line 196
    .restart local v0       #matchCount:I
    .restart local v3       #pend:I
    .restart local v4       #primaryResult:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    :cond_4
    if-nez v5, :cond_6

    .line 197
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NameMatchResult;

    move-result-object v5

    .line 201
    :goto_1
    invoke-virtual {v5, v0, v2, v3, v1}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->setMatchInfo(IIILjava/util/BitSet;)V

    .line 202
    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->getMatchLevel()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->getMatchLevel()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 203
    move-object v6, v4

    .line 204
    .local v6, temp:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    move-object v4, v5

    .line 205
    move-object v5, v6

    .line 209
    .end local v6           #temp:Lcom/android/providers/contacts/t9/T9NameMatchResult;
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .line 210
    goto :goto_0

    .line 199
    :cond_6
    invoke-virtual {v5, p0}, Lcom/android/providers/contacts/t9/T9NameMatchResult;->setItem(Lcom/android/providers/contacts/t9/T9Item;)V

    goto :goto_1
.end method

.method private static matchName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I
    .locals 11
    .parameter "pattern"
    .parameter "pbegin"
    .parameter "pend"
    .parameter "pstart"
    .parameter "key"
    .parameter "kstart"
    .parameter "matchDetail"

    .prologue
    .line 26
    add-int/lit8 v4, p3, 0x1

    .line 27
    .local v4, nextInitialCharIndex:I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 28
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->isInitial(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    if-ne v4, p2, :cond_3

    .line 37
    add-int/lit8 v1, p3, 0x1

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, p4, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    sub-int v1, p3, p1

    sub-int v2, p3, p1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, v2, p5

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 39
    const/4 v9, 0x1

    .line 99
    :goto_1
    return v9

    .line 27
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 48
    :cond_3
    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_5

    .line 49
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p5, 0x2

    if-ne v1, v2, :cond_4

    .line 51
    sub-int v1, p3, p1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 52
    sub-int v1, v4, p1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 53
    const/4 v9, 0x2

    goto :goto_1

    .line 56
    :cond_4
    add-int/lit8 v6, p5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/providers/contacts/t9/T9Matcher;->matchName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v9

    .line 57
    .local v9, matchCount:I
    if-lez v9, :cond_5

    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    sub-int v1, p3, p1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 65
    .end local v9           #matchCount:I
    :cond_5
    sub-int v10, v4, p3

    .line 66
    .local v10, spanLength:I
    add-int/lit8 v8, v4, -0x1

    .local v8, i:I
    :goto_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 69
    :cond_6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v1, p5

    if-gt v1, v10, :cond_8

    .line 73
    add-int/lit8 v1, p3, 0x1

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v1, p4, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    sub-int v1, p3, p1

    sub-int v2, p3, p1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, v2, p5

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 75
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 77
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 80
    :cond_8
    add-int v1, p5, v10

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_a

    add-int/lit8 v1, p3, 0x1

    add-int/lit8 v2, p5, 0x1

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {p0, v1, p4, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 85
    add-int v1, p5, v10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 87
    sub-int v1, p3, p1

    sub-int v2, v4, p1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 88
    const/4 v9, 0x2

    goto/16 :goto_1

    .line 91
    :cond_9
    add-int v6, p5, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/providers/contacts/t9/T9Matcher;->matchName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v9

    .line 93
    .restart local v9       #matchCount:I
    if-lez v9, :cond_a

    .line 94
    add-int/lit8 v9, v9, 0x1

    .line 95
    sub-int v1, p3, p1

    sub-int v2, v4, p1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto/16 :goto_1

    .line 99
    .end local v9           #matchCount:I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private static matchName(Ljava/lang/String;IILjava/lang/String;Ljava/util/BitSet;)I
    .locals 11
    .parameter "pattern"
    .parameter "pbegin"
    .parameter "pend"
    .parameter "key"
    .parameter "matchDetail"

    .prologue
    const/4 v5, 0x0

    .line 114
    sub-int v0, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v5

    .line 118
    :cond_1
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result v7

    .line 120
    .local v7, first:C
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    add-int/lit8 v9, v0, 0x1

    .line 121
    .local v9, maxLength:I
    move v10, p1

    .line 122
    .local v10, startIndex:I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 124
    invoke-virtual {p0, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 125
    .local v3, index:I
    if-ltz v3, :cond_0

    if-ge v3, v9, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v6, p4

    .line 131
    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/t9/T9Matcher;->matchName(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v8

    .line 132
    .local v8, matchCount:I
    if-lez v8, :cond_2

    move v5, v8

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    add-int/lit8 v10, v3, 0x1

    .line 138
    goto :goto_1
.end method

.method public static matchNumber(Lcom/android/providers/contacts/t9/T9Item;C)Lcom/android/providers/contacts/t9/T9MatchResult;
    .locals 1
    .parameter "item"
    .parameter "key"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static matchNumber(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResult;
    .locals 1
    .parameter "item"
    .parameter "key"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    move-result-object v0

    goto :goto_0
.end method
