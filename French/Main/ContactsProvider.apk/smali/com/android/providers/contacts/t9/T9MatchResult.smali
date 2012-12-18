.class public abstract Lcom/android/providers/contacts/t9/T9MatchResult;
.super Ljava/lang/Object;
.source "T9MatchResult.java"


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/contacts/t9/T9MatchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItem:Lcom/android/providers/contacts/t9/T9Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9MatchResult;->COLLATOR:Ljava/text/Collator;

    .line 43
    new-instance v0, Lcom/android/providers/contacts/t9/T9MatchResult$1;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9MatchResult$1;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/t9/T9MatchResult;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/t9/T9Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/providers/contacts/t9/T9MatchResult;->COLLATOR:Ljava/text/Collator;

    return-object v0
.end method

.method public static createContactSPDivider()Lcom/android/providers/contacts/t9/T9MatchResult;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/android/providers/contacts/t9/T9Item;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Item;-><init>()V

    .line 93
    .local v0, divider:Lcom/android/providers/contacts/t9/T9Item;
    const-wide/16 v1, -0x63

    iput-wide v1, v0, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    .line 94
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9NumberMatchResult;->createInstance(Lcom/android/providers/contacts/t9/T9Item;)Lcom/android/providers/contacts/t9/T9NumberMatchResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    if-ne p0, p1, :cond_1

    .line 34
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 31
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/android/providers/contacts/t9/T9MatchResult;

    if-eqz v2, :cond_2

    .line 32
    sget-object v2, Lcom/android/providers/contacts/t9/T9MatchResult;->COMPARATOR:Ljava/util/Comparator;

    check-cast p1, Lcom/android/providers/contacts/t9/T9MatchResult;

    .end local p1
    invoke-interface {v2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_2
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method public abstract getDisplayString()Ljava/lang/String;
.end method

.method public getItem()Lcom/android/providers/contacts/t9/T9Item;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    return-object v0
.end method

.method public abstract getMatchDetail()Ljava/lang/String;
.end method

.method public abstract getMatchLevel()I
.end method

.method public abstract recycle()V
.end method

.method public setItem(Lcom/android/providers/contacts/t9/T9Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 21
    return-void
.end method
