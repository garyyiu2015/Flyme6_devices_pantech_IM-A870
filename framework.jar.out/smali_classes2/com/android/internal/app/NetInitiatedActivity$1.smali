.class Lcom/android/internal/app/NetInitiatedActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/NetInitiatedActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.NETWORK_INITIATED_VERIFY"

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v0, p2}, Lcom/android/internal/app/NetInitiatedActivity;->-wrap0(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V

    .line 59
    :cond_0
    return-void
.end method
