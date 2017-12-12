.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1451
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1446
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 6
    .param p1, "cookie"    # I

    .prologue
    const-wide/32 v4, 0x100000

    const/4 v1, 0x0

    .line 1529
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1530
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_2

    .line 1531
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 1533
    iget v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1532
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1535
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1536
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1537
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v2, :cond_1

    .line 1538
    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v2, v4

    .line 1537
    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v1

    :cond_1
    return v1

    .line 1540
    :cond_2
    return v1
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    .prologue
    .line 1559
    and-int/lit16 v0, p1, 0xff

    .line 1560
    .local v0, "index":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    .line 1561
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :goto_0
    return-object v1

    .restart local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1544
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1545
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1546
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1547
    if-eqz p2, :cond_0

    .line 1548
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    :cond_0
    const-string/jumbo v2, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1554
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1555
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1456
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1457
    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v2, v4, 0x14

    .line 1458
    .local v2, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v2

    .line 1459
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-nez v3, :cond_1

    .line 1460
    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1461
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v3, v4, v2

    .line 1469
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 1470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1471
    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1472
    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1473
    if-eqz p3, :cond_4

    .line 1474
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 1475
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1479
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_4

    .line 1480
    aget-object v0, p3, v1

    .line 1481
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v4, v0, [B

    if-eqz v4, :cond_3

    .line 1483
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-get0()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1463
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1464
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1465
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1466
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1456
    .end local v2    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1477
    .restart local v2    # "index":I
    .restart local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :cond_2
    :try_start_1
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1485
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1489
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v4

    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1490
    const-wide/32 v6, 0x100000

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1491
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    .line 1492
    iget v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1491
    const-wide/32 v8, 0x100000

    invoke-static {v8, v9, v4, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1494
    :cond_5
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1495
    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1565
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    .line 1566
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v2, v4

    .line 1567
    .local v1, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v3

    .line 1572
    return-object v5

    .line 1568
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1565
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    .end local v1    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1577
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1578
    :try_start_0
    const-string/jumbo v4, "  Most recently executed operations:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1579
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1580
    .local v0, "index":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1581
    .local v3, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_3

    .line 1582
    const/4 v2, 0x0

    .line 1584
    .local v2, "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1585
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap0(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    const-string/jumbo v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1589
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1591
    if-lez v0, :cond_2

    .line 1592
    add-int/lit8 v0, v0, -0x1

    .line 1596
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 1597
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    if-eqz v3, :cond_1

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_1
    :goto_1
    monitor-exit v5

    .line 1576
    return-void

    .line 1594
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "n":I
    :cond_2
    const/16 v0, 0x13

    goto :goto_0

    .line 1600
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_3
    :try_start_1
    const-string/jumbo v4, "    <none>"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1577
    .end local v0    # "index":I
    .end local v3    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    .prologue
    .line 1509
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1510
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1508
    return-void

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    .prologue
    .line 1517
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1518
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 1517
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1500
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v2

    .line 1501
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1502
    .local v0, "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    .line 1503
    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1499
    return-void

    .line 1500
    .end local v0    # "operation":Landroid/database/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1524
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1522
    return-void

    .line 1523
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
