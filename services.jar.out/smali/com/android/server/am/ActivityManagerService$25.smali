.class final Lcom/android/server/am/ActivityManagerService$25;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ActivityManagerService$MemItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;
    .param p2, "rhs"    # Lcom/android/server/am/ActivityManagerService$MemItem;

    .prologue
    .line 16157
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 16158
    const/4 v0, 0x1

    return v0

    .line 16159
    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 16160
    const/4 v0, -0x1

    return v0

    .line 16162
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 16156
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$25;->compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I

    move-result v0

    return v0
.end method
