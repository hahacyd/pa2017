
mov-jcc:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	e8 fd 00 00 00       	call   3010a <__x86.get_pc_thunk.dx>
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
   3008c:	00 8b 40 04 85 c0    	add    %cl,-0x3f7afbc0(%ebx)
   30092:	7f 06                	jg     3009a <main+0x95>
   30094:	b8 01 00 00 00       	mov    $0x1,%eax
   30099:	82 c7 c0             	add    $0xc0,%bh
   3009c:	40                   	inc    %eax
   3009d:	20 03                	and    %al,(%ebx)
   3009f:	00 8b 40 08 83 f8    	add    %cl,-0x77cf7c0(%ebx)
   300a5:	02 7e 06             	add    0x6(%esi),%bh
   300a8:	b8 01 00 00 00       	mov    $0x1,%eax
   300ad:	82 c7 c0             	add    $0xc0,%bh
   300b0:	40                   	inc    %eax
   300b1:	20 03                	and    %al,(%ebx)
   300b3:	00 8b 40 0c 83 f8    	add    %cl,-0x77cf3c0(%ebx)
   300b9:	02 7f 06             	add    0x6(%edi),%bh
   300bc:	b8 01 00 00 00       	mov    $0x1,%eax
   300c1:	82 c7 c0             	add    $0xc0,%bh
   300c4:	40                   	inc    %eax
   300c5:	20 03                	and    %al,(%ebx)
   300c7:	00 8b 40 10 83 f8    	add    %cl,-0x77cefc0(%ebx)
   300cd:	04 7e                	add    $0x7e,%al
   300cf:	06                   	push   %es
   300d0:	b8 01 00 00 00       	mov    $0x1,%eax
   300d5:	82 c7 c0             	add    $0xc0,%bh
   300d8:	20 20                	and    %ah,(%eax)
   300da:	03 00                	add    (%eax),%eax
   300dc:	8b 00                	mov    (%eax),%eax
   300de:	83 f8 03             	cmp    $0x3,%eax
   300e1:	74 06                	je     300e9 <main+0xe4>
   300e3:	b8 01 00 00 00       	mov    $0x1,%eax
   300e8:	82 c7 c0             	add    $0xc0,%bh
   300eb:	40                   	inc    %eax
   300ec:	20 03                	and    %al,(%ebx)
   300ee:	00 8b 40 14 83 f8    	add    %cl,-0x77cebc0(%ebx)
   300f4:	06                   	push   %es
   300f5:	75 06                	jne    300fd <main+0xf8>
   300f7:	b8 01 00 00 00       	mov    $0x1,%eax
   300fc:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   30103:	b8 00 00 00 00       	mov    $0x0,%eax
   30108:	5d                   	pop    %ebp
   30109:	c3                   	ret    

0003010a <__x86.get_pc_thunk.dx>:
   3010a:	8b 14 24             	mov    (%esp),%edx
   3010d:	c3                   	ret    
