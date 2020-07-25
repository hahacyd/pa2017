
bit:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 a7 00 00 00       	jmp    300ac <main>

00030005 <getbit>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 10             	sub    $0x10,%esp
   3000b:	e8 0a 02 00 00       	call   3021a <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	8b 45 0c             	mov    0xc(%ebp),%eax
   30018:	c1 f8 03             	sar    $0x3,%eax
   3001b:	89 45 fc             	mov    %eax,-0x4(%ebp)
   3001e:	83 65 0c 07          	andl   $0x7,0xc(%ebp)
   30022:	8b 45 0c             	mov    0xc(%ebp),%eax
   30025:	ba 01 00 00 00       	mov    $0x1,%edx
   3002a:	88 c1                	mov    %al,%cl
   3002c:	d3 e2                	shl    %cl,%edx
   3002e:	89 d0                	mov    %edx,%eax
   30030:	88 45 fb             	mov    %al,-0x5(%ebp)
   30033:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30036:	8b 45 08             	mov    0x8(%ebp),%eax
   30039:	01 d0                	add    %edx,%eax
   3003b:	8a 00                	mov    (%eax),%al
   3003d:	22 45 fb             	and    -0x5(%ebp),%al
   30040:	84 c0                	test   %al,%al
   30042:	0f 95 c0             	setne  %al
   30045:	c9                   	leave  
   30046:	c3                   	ret    

00030047 <setbit>:
   30047:	55                   	push   %ebp
   30048:	89 e5                	mov    %esp,%ebp
   3004a:	83 ec 14             	sub    $0x14,%esp
   3004d:	e8 c8 01 00 00       	call   3021a <__x86.get_pc_thunk.ax>
   30052:	05 ae 1f 00 00       	add    $0x1fae,%eax
   30057:	8b 45 10             	mov    0x10(%ebp),%eax
   3005a:	88 45 ec             	mov    %al,-0x14(%ebp)
   3005d:	8b 45 0c             	mov    0xc(%ebp),%eax
   30060:	c1 f8 03             	sar    $0x3,%eax
   30063:	89 45 fc             	mov    %eax,-0x4(%ebp)
   30066:	83 65 0c 07          	andl   $0x7,0xc(%ebp)
   3006a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3006d:	ba 01 00 00 00       	mov    $0x1,%edx
   30072:	88 c1                	mov    %al,%cl
   30074:	d3 e2                	shl    %cl,%edx
   30076:	89 d0                	mov    %edx,%eax
   30078:	88 45 fb             	mov    %al,-0x5(%ebp)
   3007b:	8b 55 fc             	mov    -0x4(%ebp),%edx
   3007e:	8b 45 08             	mov    0x8(%ebp),%eax
   30081:	01 d0                	add    %edx,%eax
   30083:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30086:	80 7d ec 00          	cmpb   $0x0,-0x14(%ebp)
   3008a:	75 10                	jne    3009c <setbit+0x55>
   3008c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3008f:	8a 00                	mov    (%eax),%al
   30091:	88 c2                	mov    %al,%dl
   30093:	8a 45 fb             	mov    -0x5(%ebp),%al
   30096:	f7 d0                	not    %eax
   30098:	21 d0                	and    %edx,%eax
   3009a:	eb 08                	jmp    300a4 <setbit+0x5d>
   3009c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3009f:	8a 00                	mov    (%eax),%al
   300a1:	0a 45 fb             	or     -0x5(%ebp),%al
   300a4:	8b 55 f4             	mov    -0xc(%ebp),%edx
   300a7:	88 02                	mov    %al,(%edx)
   300a9:	90                   	nop
   300aa:	c9                   	leave  
   300ab:	c3                   	ret    

000300ac <main>:
   300ac:	55                   	push   %ebp
   300ad:	89 e5                	mov    %esp,%ebp
   300af:	83 ec 10             	sub    $0x10,%esp
   300b2:	e8 63 01 00 00       	call   3021a <__x86.get_pc_thunk.ax>
   300b7:	05 49 1f 00 00       	add    $0x1f49,%eax
   300bc:	c6 45 fe aa          	movb   $0xaa,-0x2(%ebp)
   300c0:	6a 00                	push   $0x0
   300c2:	8d 45 fe             	lea    -0x2(%ebp),%eax
   300c5:	50                   	push   %eax
   300c6:	e8 3a ff ff ff       	call   30005 <getbit>
   300cb:	83 c4 08             	add    $0x8,%esp
   300ce:	84 c0                	test   %al,%al
   300d0:	74 06                	je     300d8 <main+0x2c>
   300d2:	b8 01 00 00 00       	mov    $0x1,%eax
   300d7:	82 6a 01 8d          	subb   $0x8d,0x1(%edx)
   300db:	45                   	inc    %ebp
   300dc:	fe                   	(bad)  
   300dd:	50                   	push   %eax
   300de:	e8 22 ff ff ff       	call   30005 <getbit>
   300e3:	83 c4 08             	add    $0x8,%esp
   300e6:	3c 01                	cmp    $0x1,%al
   300e8:	74 06                	je     300f0 <main+0x44>
   300ea:	b8 01 00 00 00       	mov    $0x1,%eax
   300ef:	82 6a 02 8d          	subb   $0x8d,0x2(%edx)
   300f3:	45                   	inc    %ebp
   300f4:	fe                   	(bad)  
   300f5:	50                   	push   %eax
   300f6:	e8 0a ff ff ff       	call   30005 <getbit>
   300fb:	83 c4 08             	add    $0x8,%esp
   300fe:	84 c0                	test   %al,%al
   30100:	74 06                	je     30108 <main+0x5c>
   30102:	b8 01 00 00 00       	mov    $0x1,%eax
   30107:	82 6a 03 8d          	subb   $0x8d,0x3(%edx)
   3010b:	45                   	inc    %ebp
   3010c:	fe                   	(bad)  
   3010d:	50                   	push   %eax
   3010e:	e8 f2 fe ff ff       	call   30005 <getbit>
   30113:	83 c4 08             	add    $0x8,%esp
   30116:	3c 01                	cmp    $0x1,%al
   30118:	74 06                	je     30120 <main+0x74>
   3011a:	b8 01 00 00 00       	mov    $0x1,%eax
   3011f:	82 6a 04 8d          	subb   $0x8d,0x4(%edx)
   30123:	45                   	inc    %ebp
   30124:	fe                   	(bad)  
   30125:	50                   	push   %eax
   30126:	e8 da fe ff ff       	call   30005 <getbit>
   3012b:	83 c4 08             	add    $0x8,%esp
   3012e:	84 c0                	test   %al,%al
   30130:	74 06                	je     30138 <main+0x8c>
   30132:	b8 01 00 00 00       	mov    $0x1,%eax
   30137:	82 6a 05 8d          	subb   $0x8d,0x5(%edx)
   3013b:	45                   	inc    %ebp
   3013c:	fe                   	(bad)  
   3013d:	50                   	push   %eax
   3013e:	e8 c2 fe ff ff       	call   30005 <getbit>
   30143:	83 c4 08             	add    $0x8,%esp
   30146:	3c 01                	cmp    $0x1,%al
   30148:	74 06                	je     30150 <main+0xa4>
   3014a:	b8 01 00 00 00       	mov    $0x1,%eax
   3014f:	82 6a 06 8d          	subb   $0x8d,0x6(%edx)
   30153:	45                   	inc    %ebp
   30154:	fe                   	(bad)  
   30155:	50                   	push   %eax
   30156:	e8 aa fe ff ff       	call   30005 <getbit>
   3015b:	83 c4 08             	add    $0x8,%esp
   3015e:	84 c0                	test   %al,%al
   30160:	74 06                	je     30168 <main+0xbc>
   30162:	b8 01 00 00 00       	mov    $0x1,%eax
   30167:	82 6a 07 8d          	subb   $0x8d,0x7(%edx)
   3016b:	45                   	inc    %ebp
   3016c:	fe                   	(bad)  
   3016d:	50                   	push   %eax
   3016e:	e8 92 fe ff ff       	call   30005 <getbit>
   30173:	83 c4 08             	add    $0x8,%esp
   30176:	3c 01                	cmp    $0x1,%al
   30178:	74 06                	je     30180 <main+0xd4>
   3017a:	b8 01 00 00 00       	mov    $0x1,%eax
   3017f:	82 6a 01 6a          	subb   $0x6a,0x1(%edx)
   30183:	08 8d 45 fe 50 e8    	or     %cl,-0x17af01bb(%ebp)
   30189:	ba fe ff ff 83       	mov    $0x83fffffe,%edx
   3018e:	c4 0c 6a             	les    (%edx,%ebp,2),%ecx
   30191:	00 6a 09             	add    %ch,0x9(%edx)
   30194:	8d 45 fe             	lea    -0x2(%ebp),%eax
   30197:	50                   	push   %eax
   30198:	e8 aa fe ff ff       	call   30047 <setbit>
   3019d:	83 c4 0c             	add    $0xc,%esp
   301a0:	6a 01                	push   $0x1
   301a2:	6a 0a                	push   $0xa
   301a4:	8d 45 fe             	lea    -0x2(%ebp),%eax
   301a7:	50                   	push   %eax
   301a8:	e8 9a fe ff ff       	call   30047 <setbit>
   301ad:	83 c4 0c             	add    $0xc,%esp
   301b0:	6a 00                	push   $0x0
   301b2:	6a 0b                	push   $0xb
   301b4:	8d 45 fe             	lea    -0x2(%ebp),%eax
   301b7:	50                   	push   %eax
   301b8:	e8 8a fe ff ff       	call   30047 <setbit>
   301bd:	83 c4 0c             	add    $0xc,%esp
   301c0:	6a 01                	push   $0x1
   301c2:	6a 0c                	push   $0xc
   301c4:	8d 45 fe             	lea    -0x2(%ebp),%eax
   301c7:	50                   	push   %eax
   301c8:	e8 7a fe ff ff       	call   30047 <setbit>
   301cd:	83 c4 0c             	add    $0xc,%esp
   301d0:	6a 00                	push   $0x0
   301d2:	6a 0d                	push   $0xd
   301d4:	8d 45 fe             	lea    -0x2(%ebp),%eax
   301d7:	50                   	push   %eax
   301d8:	e8 6a fe ff ff       	call   30047 <setbit>
   301dd:	83 c4 0c             	add    $0xc,%esp
   301e0:	6a 01                	push   $0x1
   301e2:	6a 0e                	push   $0xe
   301e4:	8d 45 fe             	lea    -0x2(%ebp),%eax
   301e7:	50                   	push   %eax
   301e8:	e8 5a fe ff ff       	call   30047 <setbit>
   301ed:	83 c4 0c             	add    $0xc,%esp
   301f0:	6a 00                	push   $0x0
   301f2:	6a 0f                	push   $0xf
   301f4:	8d 45 fe             	lea    -0x2(%ebp),%eax
   301f7:	50                   	push   %eax
   301f8:	e8 4a fe ff ff       	call   30047 <setbit>
   301fd:	83 c4 0c             	add    $0xc,%esp
   30200:	8a 45 ff             	mov    -0x1(%ebp),%al
   30203:	3c 55                	cmp    $0x55,%al
   30205:	74 06                	je     3020d <main+0x161>
   30207:	b8 01 00 00 00       	mov    $0x1,%eax
   3020c:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   30213:	b8 00 00 00 00       	mov    $0x0,%eax
   30218:	c9                   	leave  
   30219:	c3                   	ret    

0003021a <__x86.get_pc_thunk.ax>:
   3021a:	8b 04 24             	mov    (%esp),%eax
   3021d:	c3                   	ret    
