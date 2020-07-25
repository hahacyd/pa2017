
mov-c:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	e8 fe 00 00 00       	call   3010b <__x86.get_pc_thunk.dx>
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
   30075:	c7 c0 40 20 03 00    	mov    $0x32040,%eax
   3007b:	8b 00                	mov    (%eax),%eax
   3007d:	85 c0                	test   %eax,%eax
   3007f:	74 06                	je     30087 <main+0x82>
   30081:	b8 01 00 00 00       	mov    $0x1,%eax
   30086:	82 c7 c0             	add    $0xc0,%bh
   30089:	40                   	inc    %eax
   3008a:	20 03                	and    %al,(%ebx)
   3008c:	00 8b 40 04 83 f8    	add    %cl,-0x77cfbc0(%ebx)
   30092:	01 74 06 b8          	add    %esi,-0x48(%esi,%eax,1)
   30096:	01 00                	add    %eax,(%eax)
   30098:	00 00                	add    %al,(%eax)
   3009a:	82 c7 c0             	add    $0xc0,%bh
   3009d:	40                   	inc    %eax
   3009e:	20 03                	and    %al,(%ebx)
   300a0:	00 8b 40 08 83 f8    	add    %cl,-0x77cf7c0(%ebx)
   300a6:	02 74 06 b8          	add    -0x48(%esi,%eax,1),%dh
   300aa:	01 00                	add    %eax,(%eax)
   300ac:	00 00                	add    %al,(%eax)
   300ae:	82 c7 c0             	add    $0xc0,%bh
   300b1:	40                   	inc    %eax
   300b2:	20 03                	and    %al,(%ebx)
   300b4:	00 8b 40 0c 83 f8    	add    %cl,-0x77cf3c0(%ebx)
   300ba:	03 74 06 b8          	add    -0x48(%esi,%eax,1),%esi
   300be:	01 00                	add    %eax,(%eax)
   300c0:	00 00                	add    %al,(%eax)
   300c2:	82 c7 c0             	add    $0xc0,%bh
   300c5:	40                   	inc    %eax
   300c6:	20 03                	and    %al,(%ebx)
   300c8:	00 8b 40 10 83 f8    	add    %cl,-0x77cefc0(%ebx)
   300ce:	04 74                	add    $0x74,%al
   300d0:	06                   	push   %es
   300d1:	b8 01 00 00 00       	mov    $0x1,%eax
   300d6:	82 c7 c0             	add    $0xc0,%bh
   300d9:	20 20                	and    %ah,(%eax)
   300db:	03 00                	add    (%eax),%eax
   300dd:	8b 00                	mov    (%eax),%eax
   300df:	83 f8 03             	cmp    $0x3,%eax
   300e2:	74 06                	je     300ea <main+0xe5>
   300e4:	b8 01 00 00 00       	mov    $0x1,%eax
   300e9:	82 c7 c0             	add    $0xc0,%bh
   300ec:	40                   	inc    %eax
   300ed:	20 03                	and    %al,(%ebx)
   300ef:	00 8b 40 14 83 f8    	add    %cl,-0x77cebc0(%ebx)
   300f5:	03 74 06 b8          	add    -0x48(%esi,%eax,1),%esi
   300f9:	01 00                	add    %eax,(%eax)
   300fb:	00 00                	add    %al,(%eax)
   300fd:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   30104:	b8 00 00 00 00       	mov    $0x0,%eax
   30109:	5d                   	pop    %ebp
   3010a:	c3                   	ret    

0003010b <__x86.get_pc_thunk.dx>:
   3010b:	8b 14 24             	mov    (%esp),%edx
   3010e:	c3                   	ret    
