.class public Landroid/app/Notification$DecoratedCustomViewStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5546
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    return-void
.end method

.method private buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "customContent"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x10203b8

    .line 5615
    if-eqz p2, :cond_0

    .line 5618
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 5619
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5620
    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 5623
    :cond_0
    const v0, 0x1050045

    .line 5624
    .local v0, "endMargin":I
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5625
    const v0, 0x1050047

    .line 5627
    :cond_1
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 5614
    return-void
.end method

.method private makeDecoratedBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 5601
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 5602
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5604
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 5605
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2

    .line 5603
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 5607
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 5608
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 5607
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 5609
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 5610
    return-object v1
.end method

.method private makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 5581
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 5582
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5584
    .local v0, "headsUpContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 5585
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2

    .line 5583
    .end local v0    # "headsUpContentView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .restart local v0    # "headsUpContentView":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 5587
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 5588
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 5587
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 5589
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 5590
    return-object v1
.end method

.method private makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .prologue
    .line 5594
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 5595
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)I

    move-result v2

    .line 5594
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5596
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 5597
    return-object v0
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .locals 1

    .prologue
    .line 5553
    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 5569
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 5561
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 5577
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
