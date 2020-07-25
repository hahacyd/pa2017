
movsx:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	e8 82 01 00 00       	call   3018f <__x86.get_pc_thunk.dx>
   3000d:	81 c2 f3 1f 00 00    	add    $0x1ff3,%edx
   30013:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   30019:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   3001f:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   30025:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
   3002c:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   30032:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%eax)
   30039:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   3003f:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
   30046:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   3004c:	c7 40 10 04 00 00 00 	movl   $0x4,0x10(%eax)
   30053:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   30059:	8b 48 0c             	mov    0xc(%eax),%ecx
   3005c:	c7 c0 20 20 03 00    	mov    $0x32020,%eax
   30062:	89 08                	mov    %ecx,(%eax)
   30064:	c7 c0 20 20 03 00    	mov    $0x32020,%eax
   3006a:	8b 08                	mov    (%eax),%ecx
   3006c:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   30072:	89 48 14             	mov    %ecx,0x14(%eax)
   30075:	c7 c0 68 20 03 00    	mov    $0x32068,%eax
   3007b:	c6 00 61             	movb   $0x61,(%eax)
   3007e:	c7 c0 68 20 03 00    	mov    $0x32068,%eax
   30084:	8a 00                	mov    (%eax),%al
   30086:	3c 61                	cmp    $0x61,%al
   30088:	74 06                	je     30090 <main+0x8b>
   3008a:	b8 01 00 00 00       	mov    $0x1,%eax
   3008f:	82 c7 c0             	add    $0xc0,%bh
   30092:	68 20 03 00 8a       	push   $0x8a000320
   30097:	08 c7                	or     %al,%bh
   30099:	c0 68 20 03          	shrb   $0x3,0x20(%eax)
   3009d:	00 88 48 01 c7 c0    	add    %cl,-0x3f38feb8(%eax)
   300a3:	68 20 03 00 8a       	push   $0x8a000320
   300a8:	40                   	inc    %eax
   300a9:	01 3c 61             	add    %edi,(%ecx,%eiz,2)
   300ac:	74 06                	je     300b4 <main+0xaf>
   300ae:	b8 01 00 00 00       	mov    $0x1,%eax
   300b3:	82 c7 c0             	add    $0xc0,%bh
   300b6:	68 20 03 00 8a       	push   $0x8a000320
   300bb:	00 0f                	add    %cl,(%edi)
   300bd:	be c8 c7 c0 40       	mov    $0x40c0c7c8,%esi
   300c2:	20 03                	and    %al,(%ebx)
   300c4:	00 89 08 c7 c0 40    	add    %cl,0x40c0c708(%ecx)
   300ca:	20 03                	and    %al,(%ebx)
   300cc:	00 8b 00 83 f8 61    	add    %cl,0x61f88300(%ebx)
   300d2:	74 06                	je     300da <main+0xd5>
   300d4:	b8 01 00 00 00       	mov    $0x1,%eax
   300d9:	82 c7 c0             	add    $0xc0,%bh
   300dc:	68 20 03 00 c6       	push   $0xc6000320
   300e1:	40                   	inc    %eax
   300e2:	01 80 c7 c0 68 20    	add    %eax,0x2068c0c7(%eax)
   300e8:	03 00                	add    (%eax),%eax
   300ea:	8a 40 01             	mov    0x1(%eax),%al
   300ed:	0f be c8             	movsbl %al,%ecx
   300f0:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   300f6:	89 08                	mov    %ecx,(%eax)
   300f8:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   300fe:	8b 40 04             	mov    0x4(%eax),%eax
   30101:	83 f8 01             	cmp    $0x1,%eax
   30104:	74 06                	je     3010c <main+0x107>
   30106:	b8 01 00 00 00       	mov    $0x1,%eax
   3010b:	82 c7 c0             	add    $0xc0,%bh
   3010e:	40                   	inc    %eax
   3010f:	20 03                	and    %al,(%ebx)
   30111:	00 8b 40 08 83 f8    	add    %cl,-0x77cf7c0(%ebx)
   30117:	02 74 06 b8          	add    -0x48(%esi,%eax,1),%dh
   3011b:	01 00                	add    %eax,(%eax)
   3011d:	00 00                	add    %al,(%eax)
   3011f:	82 c7 c0             	add    $0xc0,%bh
   30122:	40                   	inc    %eax
   30123:	20 03                	and    %al,(%ebx)
   30125:	00 8b 40 0c 83 f8    	add    %cl,-0x77cf3c0(%ebx)
   3012b:	03 74 06 b8          	add    -0x48(%esi,%eax,1),%esi
   3012f:	01 00                	add    %eax,(%eax)
   30131:	00 00                	add    %al,(%eax)
   30133:	82 c7 c0             	add    $0xc0,%bh
   30136:	40                   	inc    %eax
   30137:	20 03                	and    %al,(%ebx)
   30139:	00 8b 40 10 83 f8    	add    %cl,-0x77cefc0(%ebx)
   3013f:	04 74                	add    $0x74,%al
   30141:	06                   	push   %es
   30142:	b8 01 00 00 00       	mov    $0x1,%eax
   30147:	82 c7 c0             	add    $0xc0,%bh
   3014a:	20 20                	and    %ah,(%eax)
   3014c:	03 00                	add    (%eax),%eax
   3014e:	8b 00                	mov    (%eax),%eax
   30150:	83 f8 03             	cmp    $0x3,%eax
   30153:	74 06                	je     3015b <main+0x156>
   30155:	b8 01 00 00 00       	mov    $0x1,%eax
   3015a:	82 c7 c0             	add    $0xc0,%bh
   3015d:	40                   	inc    %eax
   3015e:	20 03                	and    %al,(%ebx)
   30160:	00 8b 40 14 83 f8    	add    %cl,-0x77cebc0(%ebx)
   30166:	03 74 06 b8          	add    -0x48(%esi,%eax,1),%esi
   3016a:	01 00                	add    %eax,(%eax)
   3016c:	00 00                	add    %al,(%eax)
   3016e:	82 c7 c0             	add    $0xc0,%bh
   30171:	68 20 03 00 8a       	push   $0x8a000320
   30176:	40                   	inc    %eax
   30177:	01 3c 80             	add    %edi,(%eax,%eax,4)
   3017a:	74 06                	je     30182 <main+0x17d>
   3017c:	b8 01 00 00 00       	mov    $0x1,%eax
   30181:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   30188:	b8 00 00 00 00       	mov    $0x0,%eax
   3018d:	5d                   	pop    %ebp
   3018e:	c3                   	ret    

0003018f <__x86.get_pc_thunk.dx>:
   3018f:	8b 14 24             	mov    (%esp),%edx
   30192:	c3                   	ret    
