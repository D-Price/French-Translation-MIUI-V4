.class final enum Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
.super Ljava/lang/Enum;
.source "T9CallLogDepot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/t9/T9CallLogDepot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

.field public static final enum Accepted:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

.field public static final enum Called:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

.field public static final enum Invalid:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

.field public static final enum Missed:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

.field public static final enum None:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

.field public static final enum Stranger:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Invalid:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 31
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->None:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 32
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    const-string v1, "Missed"

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Missed:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 33
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    const-string v1, "Called"

    invoke-direct {v0, v1, v6}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Called:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 34
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    const-string v1, "Accepted"

    invoke-direct {v0, v1, v7}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Accepted:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 35
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    const-string v1, "Stranger"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Stranger:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    sget-object v1, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Invalid:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->None:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Missed:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Called:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Accepted:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Stranger:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->$VALUES:[Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->$VALUES:[Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    invoke-virtual {v0}, [Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    return-object v0
.end method
