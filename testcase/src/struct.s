
struct:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 2f 00 00 00       	jmp    30034 <main>

00030005 <fun>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	57                   	push   %edi
   30009:	56                   	push   %esi
   3000a:	53                   	push   %ebx
   3000b:	e8 0a 01 00 00       	call   3011a <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	8b 45 08             	mov    0x8(%ebp),%eax
   30018:	89 c3                	mov    %eax,%ebx
   3001a:	8d 45 0c             	lea    0xc(%ebp),%eax
   3001d:	ba 7d 00 00 00       	mov    $0x7d,%edx
   30022:	89 df                	mov    %ebx,%edi
   30024:	89 c6                	mov    %eax,%esi
   30026:	89 d1                	mov    %edx,%ecx
   30028:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   3002a:	8b 45 08             	mov    0x8(%ebp),%eax
   3002d:	5b                   	pop    %ebx
   3002e:	5e                   	pop    %esi
   3002f:	5f                   	pop    %edi
   30030:	5d                   	pop    %ebp
   30031:	c2 04 00             	ret    $0x4

00030034 <main>:
   30034:	55                   	push   %ebp
   30035:	89 e5                	mov    %esp,%ebp
   30037:	57                   	push   %edi
   30038:	56                   	push   %esi
   30039:	53                   	push   %ebx
   3003a:	81 ec 04 02 00 00    	sub    $0x204,%esp
   30040:	e8 d5 00 00 00       	call   3011a <__x86.get_pc_thunk.ax>
   30045:	05 bb 1f 00 00       	add    $0x1fbb,%eax
   3004a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   30051:	eb 30                	jmp    30083 <main+0x4f>
   30053:	8b 55 f0             	mov    -0x10(%ebp),%edx
   30056:	8d 9a 80 00 00 00    	lea    0x80(%edx),%ebx
   3005c:	c7 c2 20 20 03 00    	mov    $0x32020,%edx
   30062:	8b 4d f0             	mov    -0x10(%ebp),%ecx
   30065:	89 1c 8a             	mov    %ebx,(%edx,%ecx,4)
   30068:	8b 55 f0             	mov    -0x10(%ebp),%edx
   3006b:	88 d1                	mov    %dl,%cl
   3006d:	c7 c3 20 20 03 00    	mov    $0x32020,%ebx
   30073:	8b 55 f0             	mov    -0x10(%ebp),%edx
   30076:	01 da                	add    %ebx,%edx
   30078:	81 c2 90 01 00 00    	add    $0x190,%edx
   3007e:	88 0a                	mov    %cl,(%edx)
   30080:	ff 45 f0             	incl   -0x10(%ebp)
   30083:	83 7d f0 63          	cmpl   $0x63,-0x10(%ebp)
   30087:	7e ca                	jle    30053 <main+0x1f>
   30089:	8d b5 fc fd ff ff    	lea    -0x204(%ebp),%esi
   3008f:	89 b5 f0 fd ff ff    	mov    %esi,-0x210(%ebp)
   30095:	c7 c0 20 20 03 00    	mov    $0x32020,%eax
   3009b:	81 ec f4 01 00 00    	sub    $0x1f4,%esp
   300a1:	89 e2                	mov    %esp,%edx
   300a3:	89 c3                	mov    %eax,%ebx
   300a5:	b8 7d 00 00 00       	mov    $0x7d,%eax
   300aa:	89 d7                	mov    %edx,%edi
   300ac:	89 de                	mov    %ebx,%esi
   300ae:	89 c1                	mov    %eax,%ecx
   300b0:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   300b2:	ff b5 f0 fd ff ff    	pushl  -0x210(%ebp)
   300b8:	e8 48 ff ff ff       	call   30005 <fun>
   300bd:	81 c4 f4 01 00 00    	add    $0x1f4,%esp
   300c3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   300ca:	eb 35                	jmp    30101 <main+0xcd>
   300cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
   300cf:	8b 84 85 fc fd ff ff 	mov    -0x204(%ebp,%eax,4),%eax
   300d6:	8b 55 f0             	mov    -0x10(%ebp),%edx
   300d9:	83 ea 80             	sub    $0xffffff80,%edx
   300dc:	39 d0                	cmp    %edx,%eax
   300de:	74 06                	je     300e6 <main+0xb2>
   300e0:	b8 01 00 00 00       	mov    $0x1,%eax
   300e5:	82 8d 55 8c 8b 45 f0 	orb    $0xf0,0x458b8c55(%ebp)
   300ec:	01 d0                	add    %edx,%eax
   300ee:	8a 00                	mov    (%eax),%al
   300f0:	0f be c0             	movsbl %al,%eax
   300f3:	3b 45 f0             	cmp    -0x10(%ebp),%eax
   300f6:	74 06                	je     300fe <main+0xca>
   300f8:	b8 01 00 00 00       	mov    $0x1,%eax
   300fd:	82 ff 45             	cmp    $0x45,%bh
   30100:	f0 83 7d f0 63       	lock cmpl $0x63,-0x10(%ebp)
   30105:	7e c5                	jle    300cc <main+0x98>
   30107:	b8 00 00 00 00       	mov    $0x0,%eax
   3010c:	82 b8 00 00 00 00 8d 	cmpb   $0x8d,0x0(%eax)
   30113:	65 f4                	gs hlt 
   30115:	5b                   	pop    %ebx
   30116:	5e                   	pop    %esi
   30117:	5f                   	pop    %edi
   30118:	5d                   	pop    %ebp
   30119:	c3                   	ret    

0003011a <__x86.get_pc_thunk.ax>:
   3011a:	8b 04 24             	mov    (%esp),%eax
   3011d:	c3                   	ret    
