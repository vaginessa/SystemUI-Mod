.class public Lcom/android/systemui/classifier/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public timeOffsetNano:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iput p2, p0, Lcom/android/systemui/classifier/Point;->y:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/classifier/Point;->x:F

    iput p2, p0, Lcom/android/systemui/classifier/Point;->y:F

    iput-wide p3, p0, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    return-void
.end method


# virtual methods
.method public crossProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .locals 4

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/android/systemui/classifier/Point;->x:F

    iget v3, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public dist(Lcom/android/systemui/classifier/Point;)F
    .locals 4

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget v3, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public dotProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .locals 4

    iget v0, p1, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/android/systemui/classifier/Point;->x:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/systemui/classifier/Point;->y:F

    iget v2, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/android/systemui/classifier/Point;->y:F

    iget v3, p0, Lcom/android/systemui/classifier/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Lcom/android/systemui/classifier/Point;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/Point;->x:F

    iget v1, p1, Lcom/android/systemui/classifier/Point;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/Point;->y:F

    iget v1, p1, Lcom/android/systemui/classifier/Point;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/Point;->crossProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/Point;->dotProduct(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    div-float v6, v3, v0

    div-float/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    const v6, 0x40c90fdb

    sub-float v5, v6, v5

    :cond_1
    return v5

    :cond_2
    :goto_0
    return v2
.end method
