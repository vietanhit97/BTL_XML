<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>
            <body>
                <div style="display:flex;flex-direction:column; align-items:center; ">
                    <h2>Hiển thị thông tin</h2>
                    <table border="1" width="75%" >
                        <tr bgcolor="#9acd32">
                            <th>id</th>
                            <th>name</th>
                            <th>Category_id</th>
                            <th>desscription</th>
                            <th>amount</th>
                            
                            <th>price</th>
                            <th>size</th>
                            <th>image</th>
                        </tr>
                        <xsl:for-each select="DSSanPham/Sanpham"> 
                            <tr>
                                <td>
                                    <xsl:value-of select="id" />
                                </td>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="Category_id" />
                                </td>
                                <td>
                                    <xsl:value-of select="desscription" />
                                </td>
                                
                                <td>
                                    <xsl:value-of select="amount" />
                                </td>
                                
                                <td>
                                    <xsl:value-of select="price" />
                                </td>
                                <td>
                                    <xsl:value-of select="size" />
                                </td>
                                <td>
                                    <xsl:value-of select="image" />
                                    <xsl:value-of select="image/@type" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <h2>Sắp xếp tên theo thứ tự z-a</h2>
                    <table border="1" width="75%">
                        <tr bgcolor="#9acd32">
                            <th>id</th>
                            <th>name</th>
                            <th>Category_id</th>
                            <th>desscription</th>
                            <th>amount</th>
                            
                            <th>price</th>
                            <th>size</th>
                            <th>image</th>
                        </tr>
                        <xsl:for-each select="DSSanPham/Sanpham">
                            <xsl:sort select="name" data-type="text" order="descending" />
                            <tr>
                                <td>
                                    <xsl:value-of select="id" />
                                </td>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="Category_id" />
                                </td>
                                <td>
                                    <xsl:value-of select="desscription" />
                                </td>
                                
                                <td>
                                    <xsl:value-of select="amount" />
                                </td>
                                
                                <td>
                                    <xsl:value-of select="price" />
                                </td>
                                <td>
                                    <xsl:value-of select="size" />
                                </td>
                                <td>
                                    <xsl:value-of select="image" />
                                    <xsl:value-of select="image/@type" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <h2>Làm đậm dữ liệu sản phẩm có giá trên 100 nghìn và size XXL</h2>
                    <table border="1" width="75%">
                        <tr bgcolor="#9acd32">
                            <th>id</th>
                            <th>name</th>
                            <th>Category_id</th>
                            <th>desscription</th>
                            <th>amount</th>
                            <th>price</th>
                            <th>size</th>
                            <th>image</th>
                        </tr>
                        <xsl:for-each select="DSSanPham/Sanpham">
                            
                            <xsl:choose>
                                <xsl:when test="price &gt; 100000 and size = 'XXL'">
                                    <tr style="font-weight: bold">
                                        <td>
                                            <xsl:value-of select="id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="name" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="Category_id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="desscription" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="amount" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="price" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="size" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="image" />
                                            <xsl:value-of select="image/@type" />
                                        </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                    <tr>
                                        <td>
                                            <xsl:value-of select="id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="name" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="Category_id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="desscription" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="amount" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="price" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="size" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="image" />
                                            <xsl:value-of select="image/@type" />
                                        </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Lọc bôi nền vàng các sản phẩm có số lượng </h2>
                    <table border="1" width="75%">
                        <tr bgcolor="#9acd32">
                            <th>id</th>
                            <th>name</th>
                            <th>Category_id</th>
                            <th>desscription</th>
                            <th>amount</th>
                            
                            <th>price</th>
                            <th>size</th>
                            <th>image</th>
                        </tr>
                        <xsl:for-each select="DSSanPham/Sanpham">
                            <xsl:choose>
                                <xsl:when test="amount=0">
                                    <tr style="background-color: yellow;">
                                        <td>
                                            <xsl:value-of select="id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="name" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="Category_id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="desscription" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="amount" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="price" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="size" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="image" />
                                            <xsl:value-of select="image/@type" />
                                        </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                    <tr>
                                        <td>
                                            <xsl:value-of select="id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="name" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="Category_id" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="desscription" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="amount" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="price" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="size" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="image" />
                                            <xsl:value-of select="image/@type" />
                                        </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </table>
                    <h2>Hiển thị dữ liệu sản phẩm “Áo</h2>
                    <table border="1" width="75%">
                        <tr bgcolor="#9acd32">
                            <th>id</th>
                            <th>name</th>
                            <th>Category_id</th>
                            <th>desscription</th>
                            <th>amount</th>
                            <th>price</th>
                            <th>size</th>
                            <th>image</th>
                        </tr>
                        <xsl:for-each select="DSSanPham/Sanpham">
                            <xsl:if test="contains(name,'Áo')">
                                <tr style="background-color: yellow;">
                                    <td>
                                        <xsl:value-of select="id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="name" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Category_id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="desscription" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="amount" />
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="price" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="size" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="image" />
                                        <xsl:value-of select="image/@type" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<!-- <date>2002-05-30T09:00:00</date> -->
<!-- = (bằng nhau)
! = (không bằng)
& lt; ít hơn
& gt; lớn hơn -->