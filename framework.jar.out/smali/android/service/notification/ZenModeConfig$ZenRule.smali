.class public Landroid/service/notification/ZenModeConfig$ZenRule;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public component:Landroid/content/ComponentName;

.field public condition:Landroid/service/notification/Condition;

.field public conditionId:Landroid/net/Uri;

.field public creationTime:J

.field public enabled:Z

.field public enabler:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public snoozing:Z

.field public zenMode:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0
    .param p0, "d"    # Landroid/service/notification/ZenModeConfig$Diff;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "from"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule$1;-><init>()V

    .line 1219
    sput-object v0, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1056
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 1073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1074
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1076
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1077
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1078
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1079
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1083
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 1070
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1071
    goto :goto_0
.end method

.method private appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 4
    .param p1, "d"    # Landroid/service/notification/ZenModeConfig$Diff;
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 1151
    if-nez p3, :cond_0

    .line 1152
    const-string/jumbo v0, "delete"

    invoke-static {p1, p2, v0}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1153
    return-void

    .line 1155
    :cond_0
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v0, v1, :cond_1

    .line 1156
    const-string/jumbo v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1158
    :cond_1
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eq v0, v1, :cond_2

    .line 1159
    const-string/jumbo v0, "snoozing"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1161
    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1162
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1164
    :cond_3
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v0, v1, :cond_4

    .line 1165
    const-string/jumbo v0, "zenMode"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1167
    :cond_4
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1168
    const-string/jumbo v0, "conditionId"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1170
    :cond_5
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1171
    const-string/jumbo v0, "condition"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1173
    :cond_6
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1174
    const-string/jumbo v0, "component"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1176
    :cond_7
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1177
    const-string/jumbo v0, "id"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1179
    :cond_8
    iget-wide v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-wide v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1180
    const-string/jumbo v0, "creationTime"

    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1182
    :cond_9
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eq v0, v1, :cond_a

    .line 1183
    const-string/jumbo v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1150
    :cond_a
    return-void
.end method

.method private static appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 1
    .param p0, "d"    # Landroid/service/notification/ZenModeConfig$Diff;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "from"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 1140
    if-nez p0, :cond_0

    return-void

    .line 1141
    :cond_0
    if-nez p2, :cond_2

    .line 1142
    if-eqz p3, :cond_1

    .line 1143
    const-string/jumbo v0, "insert"

    invoke-static {p0, p1, v0}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 1145
    :cond_1
    return-void

    .line 1147
    :cond_2
    invoke-direct {p2, p0, p1, p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 1139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1189
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_0

    return v1

    .line 1190
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 1191
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1192
    .local v0, "other":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-ne v2, v3, :cond_2

    .line 1193
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-ne v2, v3, :cond_2

    .line 1194
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1192
    if-eqz v2, :cond_2

    .line 1195
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v2, v3, :cond_2

    .line 1196
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1192
    if-eqz v2, :cond_2

    .line 1197
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1192
    if-eqz v2, :cond_2

    .line 1198
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1192
    if-eqz v2, :cond_2

    .line 1199
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1192
    if-eqz v2, :cond_2

    .line 1200
    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-wide v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1201
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1192
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1206
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1207
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1206
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAutomaticActive()Z
    .locals 1

    .prologue
    .line 1211
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    goto :goto_0
.end method

.method public isTrueOrUnknown()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1215
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v2, v2, Landroid/service/notification/Condition;->state:I

    if-eq v2, v0, :cond_0

    .line 1216
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v2, v2, Landroid/service/notification/Condition;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1216
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1215
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1126
    const-string/jumbo v1, "enabled="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1126
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1127
    const-string/jumbo v1, ",snoozing="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1127
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    const-string/jumbo v1, ",name="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    const-string/jumbo v1, ",zenMode="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1130
    const-string/jumbo v1, ",conditionId="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1130
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    const-string/jumbo v1, ",condition="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    const-string/jumbo v1, ",component="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1132
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    const-string/jumbo v1, ",id="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    const-string/jumbo v1, ",creationTime="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1134
    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1125
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1135
    const-string/jumbo v1, ",enabler="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1135
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1136
    const/16 v1, 0x5d

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1096
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1104
    :goto_2
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1106
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1107
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1108
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1109
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    :goto_3
    iget-wide v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1115
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1095
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 1096
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1097
    goto :goto_1

    .line 1102
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1112
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1119
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
