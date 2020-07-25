
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 75 18 00 00       	jmp    c00318a9 <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 33 0a 00 00       	call   c0030b04 <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <fs_open>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	53                   	push   %ebx
c00300dd:	83 ec 14             	sub    $0x14,%esp
c00300e0:	e8 50 08 00 00       	call   c0030935 <__x86.get_pc_thunk.bx>
c00300e5:	81 c3 1b bf 00 00    	add    $0xbf1b,%ebx
c00300eb:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
c00300f1:	85 c0                	test   %eax,%eax
c00300f3:	75 0f                	jne    c0030104 <fs_open+0x2b>
c00300f5:	e8 d6 07 00 00       	call   c00308d0 <init_filestate>
c00300fa:	c7 83 00 10 00 00 01 	movl   $0x1,0x1000(%ebx)
c0030101:	00 00 00 
c0030104:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003010b:	e9 be 00 00 00       	jmp    c00301ce <fs_open+0xf5>
c0030110:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030113:	8d 8b c0 fe ff ff    	lea    -0x140(%ebx),%ecx
c0030119:	89 d0                	mov    %edx,%eax
c003011b:	01 c0                	add    %eax,%eax
c003011d:	01 d0                	add    %edx,%eax
c003011f:	c1 e0 02             	shl    $0x2,%eax
c0030122:	01 c8                	add    %ecx,%eax
c0030124:	8b 00                	mov    (%eax),%eax
c0030126:	83 ec 08             	sub    $0x8,%esp
c0030129:	50                   	push   %eax
c003012a:	ff 75 08             	pushl  0x8(%ebp)
c003012d:	e8 9e 24 00 00       	call   c00325d0 <strcmp>
c0030132:	83 c4 10             	add    $0x10,%esp
c0030135:	85 c0                	test   %eax,%eax
c0030137:	0f 85 8e 00 00 00    	jne    c00301cb <fs_open+0xf2>
c003013d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030140:	8d 48 03             	lea    0x3(%eax),%ecx
c0030143:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c0030149:	89 c8                	mov    %ecx,%eax
c003014b:	01 c0                	add    %eax,%eax
c003014d:	01 c8                	add    %ecx,%eax
c003014f:	c1 e0 02             	shl    $0x2,%eax
c0030152:	01 d0                	add    %edx,%eax
c0030154:	8a 00                	mov    (%eax),%al
c0030156:	84 c0                	test   %al,%al
c0030158:	74 2f                	je     c0030189 <fs_open+0xb0>
c003015a:	83 ec 0c             	sub    $0xc,%esp
c003015d:	8d 83 83 ce ff ff    	lea    -0x317d(%ebx),%eax
c0030163:	50                   	push   %eax
c0030164:	8d 83 9c cf ff ff    	lea    -0x3064(%ebx),%eax
c003016a:	50                   	push   %eax
c003016b:	6a 34                	push   $0x34
c003016d:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c0030173:	50                   	push   %eax
c0030174:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c003017a:	50                   	push   %eax
c003017b:	e8 c6 18 00 00       	call   c0031a46 <printk>
c0030180:	83 c4 20             	add    $0x20,%esp
c0030183:	b8 01 00 00 00       	mov    $0x1,%eax
c0030188:	82 8b 45 f4 8d 48 03 	orb    $0x3,0x488df445(%ebx)
c003018f:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c0030195:	89 c8                	mov    %ecx,%eax
c0030197:	01 c0                	add    %eax,%eax
c0030199:	01 c8                	add    %ecx,%eax
c003019b:	c1 e0 02             	shl    $0x2,%eax
c003019e:	01 d0                	add    %edx,%eax
c00301a0:	c6 00 01             	movb   $0x1,(%eax)
c00301a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00301a6:	8d 48 03             	lea    0x3(%eax),%ecx
c00301a9:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c00301af:	89 c8                	mov    %ecx,%eax
c00301b1:	01 c0                	add    %eax,%eax
c00301b3:	01 c8                	add    %ecx,%eax
c00301b5:	c1 e0 02             	shl    $0x2,%eax
c00301b8:	01 d0                	add    %edx,%eax
c00301ba:	83 c0 08             	add    $0x8,%eax
c00301bd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00301c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00301c6:	83 c0 03             	add    $0x3,%eax
c00301c9:	eb 43                	jmp    c003020e <fs_open+0x135>
c00301cb:	ff 45 f4             	incl   -0xc(%ebp)
c00301ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00301d1:	83 f8 18             	cmp    $0x18,%eax
c00301d4:	0f 86 36 ff ff ff    	jbe    c0030110 <fs_open+0x37>
c00301da:	83 ec 0c             	sub    $0xc,%esp
c00301dd:	8d 83 f2 ce ff ff    	lea    -0x310e(%ebx),%eax
c00301e3:	50                   	push   %eax
c00301e4:	8d 83 9c cf ff ff    	lea    -0x3064(%ebx),%eax
c00301ea:	50                   	push   %eax
c00301eb:	6a 3a                	push   $0x3a
c00301ed:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c00301f3:	50                   	push   %eax
c00301f4:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00301fa:	50                   	push   %eax
c00301fb:	e8 46 18 00 00       	call   c0031a46 <printk>
c0030200:	83 c4 20             	add    $0x20,%esp
c0030203:	b8 01 00 00 00       	mov    $0x1,%eax
c0030208:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c003020f:	5d                   	pop    %ebp
c0030210:	fc                   	cld    
c0030211:	c9                   	leave  
c0030212:	c3                   	ret    

c0030213 <fs_read>:
c0030213:	55                   	push   %ebp
c0030214:	89 e5                	mov    %esp,%ebp
c0030216:	56                   	push   %esi
c0030217:	53                   	push   %ebx
c0030218:	e8 18 07 00 00       	call   c0030935 <__x86.get_pc_thunk.bx>
c003021d:	81 c3 e3 bd 00 00    	add    $0xbde3,%ebx
c0030223:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030227:	7f 2f                	jg     c0030258 <fs_read+0x45>
c0030229:	83 ec 0c             	sub    $0xc,%esp
c003022c:	8d 83 f4 ce ff ff    	lea    -0x310c(%ebx),%eax
c0030232:	50                   	push   %eax
c0030233:	8d 83 a4 cf ff ff    	lea    -0x305c(%ebx),%eax
c0030239:	50                   	push   %eax
c003023a:	6a 3f                	push   $0x3f
c003023c:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c0030242:	50                   	push   %eax
c0030243:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030249:	50                   	push   %eax
c003024a:	e8 f7 17 00 00       	call   c0031a46 <printk>
c003024f:	83 c4 20             	add    $0x20,%esp
c0030252:	b8 01 00 00 00       	mov    $0x1,%eax
c0030257:	82 c7 c1             	add    $0xc1,%bh
c003025a:	60                   	pusha  
c003025b:	f0 06                	lock push %es
c003025d:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030264:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030267:	c1 e0 02             	shl    $0x2,%eax
c003026a:	01 c8                	add    %ecx,%eax
c003026c:	8a 00                	mov    (%eax),%al
c003026e:	3c 01                	cmp    $0x1,%al
c0030270:	74 2f                	je     c00302a1 <fs_read+0x8e>
c0030272:	83 ec 0c             	sub    $0xc,%esp
c0030275:	8d 83 fb ce ff ff    	lea    -0x3105(%ebx),%eax
c003027b:	50                   	push   %eax
c003027c:	8d 83 a4 cf ff ff    	lea    -0x305c(%ebx),%eax
c0030282:	50                   	push   %eax
c0030283:	6a 41                	push   $0x41
c0030285:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c003028b:	50                   	push   %eax
c003028c:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030292:	50                   	push   %eax
c0030293:	e8 ae 17 00 00       	call   c0031a46 <printk>
c0030298:	83 c4 20             	add    $0x20,%esp
c003029b:	b8 01 00 00 00       	mov    $0x1,%eax
c00302a0:	82 c7 c1             	add    $0xc1,%bh
c00302a3:	60                   	pusha  
c00302a4:	f0 06                	lock push %es
c00302a6:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00302ad:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00302b0:	c1 e0 02             	shl    $0x2,%eax
c00302b3:	01 c8                	add    %ecx,%eax
c00302b5:	83 c0 08             	add    $0x8,%eax
c00302b8:	8b 10                	mov    (%eax),%edx
c00302ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00302bd:	8d 70 fd             	lea    -0x3(%eax),%esi
c00302c0:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c00302c6:	89 f0                	mov    %esi,%eax
c00302c8:	01 c0                	add    %eax,%eax
c00302ca:	01 f0                	add    %esi,%eax
c00302cc:	c1 e0 02             	shl    $0x2,%eax
c00302cf:	01 c8                	add    %ecx,%eax
c00302d1:	8b 00                	mov    (%eax),%eax
c00302d3:	39 c2                	cmp    %eax,%edx
c00302d5:	76 2f                	jbe    c0030306 <fs_read+0xf3>
c00302d7:	83 ec 0c             	sub    $0xc,%esp
c00302da:	8d 83 10 cf ff ff    	lea    -0x30f0(%ebx),%eax
c00302e0:	50                   	push   %eax
c00302e1:	8d 83 a4 cf ff ff    	lea    -0x305c(%ebx),%eax
c00302e7:	50                   	push   %eax
c00302e8:	6a 47                	push   $0x47
c00302ea:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c00302f0:	50                   	push   %eax
c00302f1:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00302f7:	50                   	push   %eax
c00302f8:	e8 49 17 00 00       	call   c0031a46 <printk>
c00302fd:	83 c4 20             	add    $0x20,%esp
c0030300:	b8 01 00 00 00       	mov    $0x1,%eax
c0030305:	82 c7 c1             	add    $0xc1,%bh
c0030308:	60                   	pusha  
c0030309:	f0 06                	lock push %es
c003030b:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030312:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030315:	c1 e0 02             	shl    $0x2,%eax
c0030318:	01 c8                	add    %ecx,%eax
c003031a:	83 c0 08             	add    $0x8,%eax
c003031d:	8b 10                	mov    (%eax),%edx
c003031f:	8b 45 10             	mov    0x10(%ebp),%eax
c0030322:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030325:	8b 45 08             	mov    0x8(%ebp),%eax
c0030328:	8d 48 fd             	lea    -0x3(%eax),%ecx
c003032b:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c0030331:	89 c8                	mov    %ecx,%eax
c0030333:	01 c0                	add    %eax,%eax
c0030335:	01 c8                	add    %ecx,%eax
c0030337:	c1 e0 02             	shl    $0x2,%eax
c003033a:	01 d0                	add    %edx,%eax
c003033c:	8b 00                	mov    (%eax),%eax
c003033e:	39 c6                	cmp    %eax,%esi
c0030340:	72 39                	jb     c003037b <fs_read+0x168>
c0030342:	8b 45 08             	mov    0x8(%ebp),%eax
c0030345:	8d 48 fd             	lea    -0x3(%eax),%ecx
c0030348:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c003034e:	89 c8                	mov    %ecx,%eax
c0030350:	01 c0                	add    %eax,%eax
c0030352:	01 c8                	add    %ecx,%eax
c0030354:	c1 e0 02             	shl    $0x2,%eax
c0030357:	01 d0                	add    %edx,%eax
c0030359:	8b 08                	mov    (%eax),%ecx
c003035b:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0030361:	8b 55 08             	mov    0x8(%ebp),%edx
c0030364:	89 d0                	mov    %edx,%eax
c0030366:	01 c0                	add    %eax,%eax
c0030368:	01 d0                	add    %edx,%eax
c003036a:	c1 e0 02             	shl    $0x2,%eax
c003036d:	01 f0                	add    %esi,%eax
c003036f:	83 c0 08             	add    $0x8,%eax
c0030372:	8b 00                	mov    (%eax),%eax
c0030374:	29 c1                	sub    %eax,%ecx
c0030376:	89 c8                	mov    %ecx,%eax
c0030378:	89 45 10             	mov    %eax,0x10(%ebp)
c003037b:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030381:	8b 55 08             	mov    0x8(%ebp),%edx
c0030384:	89 d0                	mov    %edx,%eax
c0030386:	01 c0                	add    %eax,%eax
c0030388:	01 d0                	add    %edx,%eax
c003038a:	c1 e0 02             	shl    $0x2,%eax
c003038d:	01 c8                	add    %ecx,%eax
c003038f:	83 c0 08             	add    $0x8,%eax
c0030392:	8b 10                	mov    (%eax),%edx
c0030394:	8b 45 10             	mov    0x10(%ebp),%eax
c0030397:	8d 34 02             	lea    (%edx,%eax,1),%esi
c003039a:	8b 45 08             	mov    0x8(%ebp),%eax
c003039d:	8d 48 fd             	lea    -0x3(%eax),%ecx
c00303a0:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c00303a6:	89 c8                	mov    %ecx,%eax
c00303a8:	01 c0                	add    %eax,%eax
c00303aa:	01 c8                	add    %ecx,%eax
c00303ac:	c1 e0 02             	shl    $0x2,%eax
c00303af:	01 d0                	add    %edx,%eax
c00303b1:	8b 00                	mov    (%eax),%eax
c00303b3:	39 c6                	cmp    %eax,%esi
c00303b5:	76 2f                	jbe    c00303e6 <fs_read+0x1d3>
c00303b7:	83 ec 0c             	sub    $0xc,%esp
c00303ba:	8d 83 3c cf ff ff    	lea    -0x30c4(%ebx),%eax
c00303c0:	50                   	push   %eax
c00303c1:	8d 83 a4 cf ff ff    	lea    -0x305c(%ebx),%eax
c00303c7:	50                   	push   %eax
c00303c8:	6a 4d                	push   $0x4d
c00303ca:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c00303d0:	50                   	push   %eax
c00303d1:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00303d7:	50                   	push   %eax
c00303d8:	e8 69 16 00 00       	call   c0031a46 <printk>
c00303dd:	83 c4 20             	add    $0x20,%esp
c00303e0:	b8 01 00 00 00       	mov    $0x1,%eax
c00303e5:	82 8b 45 08 8d 48 fd 	orb    $0xfd,0x488d0845(%ebx)
c00303ec:	8d 93 c8 fe ff ff    	lea    -0x138(%ebx),%edx
c00303f2:	89 c8                	mov    %ecx,%eax
c00303f4:	01 c0                	add    %eax,%eax
c00303f6:	01 c8                	add    %ecx,%eax
c00303f8:	c1 e0 02             	shl    $0x2,%eax
c00303fb:	01 d0                	add    %edx,%eax
c00303fd:	8b 08                	mov    (%eax),%ecx
c00303ff:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0030405:	8b 55 08             	mov    0x8(%ebp),%edx
c0030408:	89 d0                	mov    %edx,%eax
c003040a:	01 c0                	add    %eax,%eax
c003040c:	01 d0                	add    %edx,%eax
c003040e:	c1 e0 02             	shl    $0x2,%eax
c0030411:	01 f0                	add    %esi,%eax
c0030413:	83 c0 08             	add    $0x8,%eax
c0030416:	8b 00                	mov    (%eax),%eax
c0030418:	01 c8                	add    %ecx,%eax
c003041a:	83 ec 04             	sub    $0x4,%esp
c003041d:	ff 75 10             	pushl  0x10(%ebp)
c0030420:	50                   	push   %eax
c0030421:	ff 75 0c             	pushl  0xc(%ebp)
c0030424:	e8 a6 10 00 00       	call   c00314cf <ide_read>
c0030429:	83 c4 10             	add    $0x10,%esp
c003042c:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030432:	8b 55 08             	mov    0x8(%ebp),%edx
c0030435:	89 d0                	mov    %edx,%eax
c0030437:	01 c0                	add    %eax,%eax
c0030439:	01 d0                	add    %edx,%eax
c003043b:	c1 e0 02             	shl    $0x2,%eax
c003043e:	01 c8                	add    %ecx,%eax
c0030440:	83 c0 08             	add    $0x8,%eax
c0030443:	8b 10                	mov    (%eax),%edx
c0030445:	8b 45 10             	mov    0x10(%ebp),%eax
c0030448:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c003044b:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c0030451:	8b 55 08             	mov    0x8(%ebp),%edx
c0030454:	89 d0                	mov    %edx,%eax
c0030456:	01 c0                	add    %eax,%eax
c0030458:	01 d0                	add    %edx,%eax
c003045a:	c1 e0 02             	shl    $0x2,%eax
c003045d:	01 d8                	add    %ebx,%eax
c003045f:	83 c0 08             	add    $0x8,%eax
c0030462:	89 08                	mov    %ecx,(%eax)
c0030464:	8b 45 10             	mov    0x10(%ebp),%eax
c0030467:	8d 65 f8             	lea    -0x8(%ebp),%esp
c003046a:	5b                   	pop    %ebx
c003046b:	5e                   	pop    %esi
c003046c:	5d                   	pop    %ebp
c003046d:	c3                   	ret    

c003046e <fs_write>:
c003046e:	55                   	push   %ebp
c003046f:	89 e5                	mov    %esp,%ebp
c0030471:	56                   	push   %esi
c0030472:	53                   	push   %ebx
c0030473:	83 ec 10             	sub    $0x10,%esp
c0030476:	e8 ba 04 00 00       	call   c0030935 <__x86.get_pc_thunk.bx>
c003047b:	81 c3 85 bb 00 00    	add    $0xbb85,%ebx
c0030481:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030485:	7f 6a                	jg     c00304f1 <fs_write+0x83>
c0030487:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003048b:	7e 2f                	jle    c00304bc <fs_write+0x4e>
c003048d:	83 ec 0c             	sub    $0xc,%esp
c0030490:	8d 83 6e cf ff ff    	lea    -0x3092(%ebx),%eax
c0030496:	50                   	push   %eax
c0030497:	8d 83 ac cf ff ff    	lea    -0x3054(%ebx),%eax
c003049d:	50                   	push   %eax
c003049e:	6a 5f                	push   $0x5f
c00304a0:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c00304a6:	50                   	push   %eax
c00304a7:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00304ad:	50                   	push   %eax
c00304ae:	e8 93 15 00 00       	call   c0031a46 <printk>
c00304b3:	83 c4 20             	add    $0x20,%esp
c00304b6:	b8 01 00 00 00       	mov    $0x1,%eax
c00304bb:	82 c7 45             	add    $0x45,%bh
c00304be:	f4                   	hlt    
c00304bf:	00 00                	add    %al,(%eax)
c00304c1:	00 00                	add    %al,(%eax)
c00304c3:	eb 1c                	jmp    c00304e1 <fs_write+0x73>
c00304c5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00304c8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00304cb:	01 d0                	add    %edx,%eax
c00304cd:	8a 00                	mov    (%eax),%al
c00304cf:	0f be c0             	movsbl %al,%eax
c00304d2:	83 ec 0c             	sub    $0xc,%esp
c00304d5:	50                   	push   %eax
c00304d6:	e8 e8 14 00 00       	call   c00319c3 <serial_printc>
c00304db:	83 c4 10             	add    $0x10,%esp
c00304de:	ff 45 f4             	incl   -0xc(%ebp)
c00304e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304e4:	3b 45 10             	cmp    0x10(%ebp),%eax
c00304e7:	72 dc                	jb     c00304c5 <fs_write+0x57>
c00304e9:	8b 45 10             	mov    0x10(%ebp),%eax
c00304ec:	e9 44 02 00 00       	jmp    c0030735 <fs_write+0x2c7>
c00304f1:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00304f5:	7f 2f                	jg     c0030526 <fs_write+0xb8>
c00304f7:	83 ec 0c             	sub    $0xc,%esp
c00304fa:	8d 83 f4 ce ff ff    	lea    -0x310c(%ebx),%eax
c0030500:	50                   	push   %eax
c0030501:	8d 83 ac cf ff ff    	lea    -0x3054(%ebx),%eax
c0030507:	50                   	push   %eax
c0030508:	6a 6e                	push   $0x6e
c003050a:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c0030510:	50                   	push   %eax
c0030511:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030517:	50                   	push   %eax
c0030518:	e8 29 15 00 00       	call   c0031a46 <printk>
c003051d:	83 c4 20             	add    $0x20,%esp
c0030520:	b8 01 00 00 00       	mov    $0x1,%eax
c0030525:	82 c7 c1             	add    $0xc1,%bh
c0030528:	60                   	pusha  
c0030529:	f0 06                	lock push %es
c003052b:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030532:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030535:	c1 e0 02             	shl    $0x2,%eax
c0030538:	01 c8                	add    %ecx,%eax
c003053a:	8a 00                	mov    (%eax),%al
c003053c:	3c 01                	cmp    $0x1,%al
c003053e:	74 2f                	je     c003056f <fs_write+0x101>
c0030540:	83 ec 0c             	sub    $0xc,%esp
c0030543:	8d 83 fb ce ff ff    	lea    -0x3105(%ebx),%eax
c0030549:	50                   	push   %eax
c003054a:	8d 83 ac cf ff ff    	lea    -0x3054(%ebx),%eax
c0030550:	50                   	push   %eax
c0030551:	6a 6f                	push   $0x6f
c0030553:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c0030559:	50                   	push   %eax
c003055a:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030560:	50                   	push   %eax
c0030561:	e8 e0 14 00 00       	call   c0031a46 <printk>
c0030566:	83 c4 20             	add    $0x20,%esp
c0030569:	b8 01 00 00 00       	mov    $0x1,%eax
c003056e:	82 c7 c1             	add    $0xc1,%bh
c0030571:	60                   	pusha  
c0030572:	f0 06                	lock push %es
c0030574:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003057b:	c0 01 d0             	rolb   $0xd0,(%ecx)
c003057e:	c1 e0 02             	shl    $0x2,%eax
c0030581:	01 c8                	add    %ecx,%eax
c0030583:	83 c0 08             	add    $0x8,%eax
c0030586:	8b 10                	mov    (%eax),%edx
c0030588:	8b 45 08             	mov    0x8(%ebp),%eax
c003058b:	8d 70 fd             	lea    -0x3(%eax),%esi
c003058e:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c0030594:	89 f0                	mov    %esi,%eax
c0030596:	01 c0                	add    %eax,%eax
c0030598:	01 f0                	add    %esi,%eax
c003059a:	c1 e0 02             	shl    $0x2,%eax
c003059d:	01 c8                	add    %ecx,%eax
c003059f:	8b 00                	mov    (%eax),%eax
c00305a1:	39 c2                	cmp    %eax,%edx
c00305a3:	76 2f                	jbe    c00305d4 <fs_write+0x166>
c00305a5:	83 ec 0c             	sub    $0xc,%esp
c00305a8:	8d 83 10 cf ff ff    	lea    -0x30f0(%ebx),%eax
c00305ae:	50                   	push   %eax
c00305af:	8d 83 ac cf ff ff    	lea    -0x3054(%ebx),%eax
c00305b5:	50                   	push   %eax
c00305b6:	6a 75                	push   $0x75
c00305b8:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c00305be:	50                   	push   %eax
c00305bf:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00305c5:	50                   	push   %eax
c00305c6:	e8 7b 14 00 00       	call   c0031a46 <printk>
c00305cb:	83 c4 20             	add    $0x20,%esp
c00305ce:	b8 01 00 00 00       	mov    $0x1,%eax
c00305d3:	82 c7 c1             	add    $0xc1,%bh
c00305d6:	60                   	pusha  
c00305d7:	f0 06                	lock push %es
c00305d9:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00305e0:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00305e3:	c1 e0 02             	shl    $0x2,%eax
c00305e6:	01 c8                	add    %ecx,%eax
c00305e8:	83 c0 08             	add    $0x8,%eax
c00305eb:	8b 10                	mov    (%eax),%edx
c00305ed:	8b 45 10             	mov    0x10(%ebp),%eax
c00305f0:	8d 34 02             	lea    (%edx,%eax,1),%esi
c00305f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00305f6:	8d 48 fd             	lea    -0x3(%eax),%ecx
c00305f9:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c00305ff:	89 c8                	mov    %ecx,%eax
c0030601:	01 c0                	add    %eax,%eax
c0030603:	01 c8                	add    %ecx,%eax
c0030605:	c1 e0 02             	shl    $0x2,%eax
c0030608:	01 d0                	add    %edx,%eax
c003060a:	8b 00                	mov    (%eax),%eax
c003060c:	39 c6                	cmp    %eax,%esi
c003060e:	72 39                	jb     c0030649 <fs_write+0x1db>
c0030610:	8b 45 08             	mov    0x8(%ebp),%eax
c0030613:	8d 48 fd             	lea    -0x3(%eax),%ecx
c0030616:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c003061c:	89 c8                	mov    %ecx,%eax
c003061e:	01 c0                	add    %eax,%eax
c0030620:	01 c8                	add    %ecx,%eax
c0030622:	c1 e0 02             	shl    $0x2,%eax
c0030625:	01 d0                	add    %edx,%eax
c0030627:	8b 08                	mov    (%eax),%ecx
c0030629:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c003062f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030632:	89 d0                	mov    %edx,%eax
c0030634:	01 c0                	add    %eax,%eax
c0030636:	01 d0                	add    %edx,%eax
c0030638:	c1 e0 02             	shl    $0x2,%eax
c003063b:	01 f0                	add    %esi,%eax
c003063d:	83 c0 08             	add    $0x8,%eax
c0030640:	8b 00                	mov    (%eax),%eax
c0030642:	29 c1                	sub    %eax,%ecx
c0030644:	89 c8                	mov    %ecx,%eax
c0030646:	89 45 10             	mov    %eax,0x10(%ebp)
c0030649:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003064f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030652:	89 d0                	mov    %edx,%eax
c0030654:	01 c0                	add    %eax,%eax
c0030656:	01 d0                	add    %edx,%eax
c0030658:	c1 e0 02             	shl    $0x2,%eax
c003065b:	01 c8                	add    %ecx,%eax
c003065d:	83 c0 08             	add    $0x8,%eax
c0030660:	8b 10                	mov    (%eax),%edx
c0030662:	8b 45 10             	mov    0x10(%ebp),%eax
c0030665:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030668:	8b 45 08             	mov    0x8(%ebp),%eax
c003066b:	8d 48 fd             	lea    -0x3(%eax),%ecx
c003066e:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c0030674:	89 c8                	mov    %ecx,%eax
c0030676:	01 c0                	add    %eax,%eax
c0030678:	01 c8                	add    %ecx,%eax
c003067a:	c1 e0 02             	shl    $0x2,%eax
c003067d:	01 d0                	add    %edx,%eax
c003067f:	8b 00                	mov    (%eax),%eax
c0030681:	39 c6                	cmp    %eax,%esi
c0030683:	76 2f                	jbe    c00306b4 <fs_write+0x246>
c0030685:	83 ec 0c             	sub    $0xc,%esp
c0030688:	8d 83 3c cf ff ff    	lea    -0x30c4(%ebx),%eax
c003068e:	50                   	push   %eax
c003068f:	8d 83 ac cf ff ff    	lea    -0x3054(%ebx),%eax
c0030695:	50                   	push   %eax
c0030696:	6a 7b                	push   $0x7b
c0030698:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c003069e:	50                   	push   %eax
c003069f:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00306a5:	50                   	push   %eax
c00306a6:	e8 9b 13 00 00       	call   c0031a46 <printk>
c00306ab:	83 c4 20             	add    $0x20,%esp
c00306ae:	b8 01 00 00 00       	mov    $0x1,%eax
c00306b3:	82 8b 45 08 8d 48 fd 	orb    $0xfd,0x488d0845(%ebx)
c00306ba:	8d 93 c8 fe ff ff    	lea    -0x138(%ebx),%edx
c00306c0:	89 c8                	mov    %ecx,%eax
c00306c2:	01 c0                	add    %eax,%eax
c00306c4:	01 c8                	add    %ecx,%eax
c00306c6:	c1 e0 02             	shl    $0x2,%eax
c00306c9:	01 d0                	add    %edx,%eax
c00306cb:	8b 08                	mov    (%eax),%ecx
c00306cd:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c00306d3:	8b 55 08             	mov    0x8(%ebp),%edx
c00306d6:	89 d0                	mov    %edx,%eax
c00306d8:	01 c0                	add    %eax,%eax
c00306da:	01 d0                	add    %edx,%eax
c00306dc:	c1 e0 02             	shl    $0x2,%eax
c00306df:	01 f0                	add    %esi,%eax
c00306e1:	83 c0 08             	add    $0x8,%eax
c00306e4:	8b 00                	mov    (%eax),%eax
c00306e6:	01 c8                	add    %ecx,%eax
c00306e8:	83 ec 04             	sub    $0x4,%esp
c00306eb:	ff 75 10             	pushl  0x10(%ebp)
c00306ee:	50                   	push   %eax
c00306ef:	ff 75 0c             	pushl  0xc(%ebp)
c00306f2:	e8 26 0e 00 00       	call   c003151d <ide_write>
c00306f7:	83 c4 10             	add    $0x10,%esp
c00306fa:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030700:	8b 55 08             	mov    0x8(%ebp),%edx
c0030703:	89 d0                	mov    %edx,%eax
c0030705:	01 c0                	add    %eax,%eax
c0030707:	01 d0                	add    %edx,%eax
c0030709:	c1 e0 02             	shl    $0x2,%eax
c003070c:	01 c8                	add    %ecx,%eax
c003070e:	83 c0 08             	add    $0x8,%eax
c0030711:	8b 10                	mov    (%eax),%edx
c0030713:	8b 45 10             	mov    0x10(%ebp),%eax
c0030716:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0030719:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c003071f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030722:	89 d0                	mov    %edx,%eax
c0030724:	01 c0                	add    %eax,%eax
c0030726:	01 d0                	add    %edx,%eax
c0030728:	c1 e0 02             	shl    $0x2,%eax
c003072b:	01 d8                	add    %ebx,%eax
c003072d:	83 c0 08             	add    $0x8,%eax
c0030730:	89 08                	mov    %ecx,(%eax)
c0030732:	8b 45 10             	mov    0x10(%ebp),%eax
c0030735:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030738:	5b                   	pop    %ebx
c0030739:	5e                   	pop    %esi
c003073a:	5d                   	pop    %ebp
c003073b:	c3                   	ret    

c003073c <fs_lseek>:
c003073c:	55                   	push   %ebp
c003073d:	89 e5                	mov    %esp,%ebp
c003073f:	53                   	push   %ebx
c0030740:	83 ec 04             	sub    $0x4,%esp
c0030743:	e8 ed 01 00 00       	call   c0030935 <__x86.get_pc_thunk.bx>
c0030748:	81 c3 b8 b8 00 00    	add    $0xb8b8,%ebx
c003074e:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030752:	7f 32                	jg     c0030786 <fs_lseek+0x4a>
c0030754:	83 ec 0c             	sub    $0xc,%esp
c0030757:	8d 83 f4 ce ff ff    	lea    -0x310c(%ebx),%eax
c003075d:	50                   	push   %eax
c003075e:	8d 83 b8 cf ff ff    	lea    -0x3048(%ebx),%eax
c0030764:	50                   	push   %eax
c0030765:	68 87 00 00 00       	push   $0x87
c003076a:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c0030770:	50                   	push   %eax
c0030771:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030777:	50                   	push   %eax
c0030778:	e8 c9 12 00 00       	call   c0031a46 <printk>
c003077d:	83 c4 20             	add    $0x20,%esp
c0030780:	b8 01 00 00 00       	mov    $0x1,%eax
c0030785:	82 8b 45 08 8d 48 fd 	orb    $0xfd,0x488d0845(%ebx)
c003078c:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c0030792:	89 c8                	mov    %ecx,%eax
c0030794:	01 c0                	add    %eax,%eax
c0030796:	01 c8                	add    %ecx,%eax
c0030798:	c1 e0 02             	shl    $0x2,%eax
c003079b:	01 d0                	add    %edx,%eax
c003079d:	8b 10                	mov    (%eax),%edx
c003079f:	8b 45 0c             	mov    0xc(%ebp),%eax
c00307a2:	39 c2                	cmp    %eax,%edx
c00307a4:	73 32                	jae    c00307d8 <fs_lseek+0x9c>
c00307a6:	83 ec 0c             	sub    $0xc,%esp
c00307a9:	8d 83 78 cf ff ff    	lea    -0x3088(%ebx),%eax
c00307af:	50                   	push   %eax
c00307b0:	8d 83 b8 cf ff ff    	lea    -0x3048(%ebx),%eax
c00307b6:	50                   	push   %eax
c00307b7:	68 89 00 00 00       	push   $0x89
c00307bc:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c00307c2:	50                   	push   %eax
c00307c3:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c00307c9:	50                   	push   %eax
c00307ca:	e8 77 12 00 00       	call   c0031a46 <printk>
c00307cf:	83 c4 20             	add    $0x20,%esp
c00307d2:	b8 01 00 00 00       	mov    $0x1,%eax
c00307d7:	82 8b 55 0c c7 c3 60 	orb    $0x60,-0x3c38f3ab(%ebx)
c00307de:	f0 06                	lock push %es
c00307e0:	c0 8b 4d 08 89 c8 01 	rorb   $0x1,-0x3776f7b3(%ebx)
c00307e7:	c0 01 c8             	rolb   $0xc8,(%ecx)
c00307ea:	c1 e0 02             	shl    $0x2,%eax
c00307ed:	01 d8                	add    %ebx,%eax
c00307ef:	83 c0 08             	add    $0x8,%eax
c00307f2:	89 10                	mov    %edx,(%eax)
c00307f4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00307f7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307fa:	c9                   	leave  
c00307fb:	c3                   	ret    

c00307fc <fs_close>:
c00307fc:	55                   	push   %ebp
c00307fd:	89 e5                	mov    %esp,%ebp
c00307ff:	53                   	push   %ebx
c0030800:	83 ec 04             	sub    $0x4,%esp
c0030803:	e8 2d 01 00 00       	call   c0030935 <__x86.get_pc_thunk.bx>
c0030808:	81 c3 f8 b7 00 00    	add    $0xb7f8,%ebx
c003080e:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030812:	7f 32                	jg     c0030846 <fs_close+0x4a>
c0030814:	83 ec 0c             	sub    $0xc,%esp
c0030817:	8d 83 f4 ce ff ff    	lea    -0x310c(%ebx),%eax
c003081d:	50                   	push   %eax
c003081e:	8d 83 c4 cf ff ff    	lea    -0x303c(%ebx),%eax
c0030824:	50                   	push   %eax
c0030825:	68 92 00 00 00       	push   $0x92
c003082a:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c0030830:	50                   	push   %eax
c0030831:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030837:	50                   	push   %eax
c0030838:	e8 09 12 00 00       	call   c0031a46 <printk>
c003083d:	83 c4 20             	add    $0x20,%esp
c0030840:	b8 01 00 00 00       	mov    $0x1,%eax
c0030845:	82 c7 c1             	add    $0xc1,%bh
c0030848:	60                   	pusha  
c0030849:	f0 06                	lock push %es
c003084b:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030852:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030855:	c1 e0 02             	shl    $0x2,%eax
c0030858:	01 c8                	add    %ecx,%eax
c003085a:	8a 00                	mov    (%eax),%al
c003085c:	3c 01                	cmp    $0x1,%al
c003085e:	74 32                	je     c0030892 <fs_close+0x96>
c0030860:	83 ec 0c             	sub    $0xc,%esp
c0030863:	8d 83 fb ce ff ff    	lea    -0x3105(%ebx),%eax
c0030869:	50                   	push   %eax
c003086a:	8d 83 c4 cf ff ff    	lea    -0x303c(%ebx),%eax
c0030870:	50                   	push   %eax
c0030871:	68 93 00 00 00       	push   $0x93
c0030876:	8d 83 9a ce ff ff    	lea    -0x3166(%ebx),%eax
c003087c:	50                   	push   %eax
c003087d:	8d 83 a8 ce ff ff    	lea    -0x3158(%ebx),%eax
c0030883:	50                   	push   %eax
c0030884:	e8 bd 11 00 00       	call   c0031a46 <printk>
c0030889:	83 c4 20             	add    $0x20,%esp
c003088c:	b8 01 00 00 00       	mov    $0x1,%eax
c0030891:	82 c7 c1             	add    $0xc1,%bh
c0030894:	60                   	pusha  
c0030895:	f0 06                	lock push %es
c0030897:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003089e:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00308a1:	c1 e0 02             	shl    $0x2,%eax
c00308a4:	01 c8                	add    %ecx,%eax
c00308a6:	c6 00 00             	movb   $0x0,(%eax)
c00308a9:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00308af:	8b 55 08             	mov    0x8(%ebp),%edx
c00308b2:	89 d0                	mov    %edx,%eax
c00308b4:	01 c0                	add    %eax,%eax
c00308b6:	01 d0                	add    %edx,%eax
c00308b8:	c1 e0 02             	shl    $0x2,%eax
c00308bb:	01 c8                	add    %ecx,%eax
c00308bd:	83 c0 08             	add    $0x8,%eax
c00308c0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00308c6:	b8 00 00 00 00       	mov    $0x0,%eax
c00308cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00308ce:	c9                   	leave  
c00308cf:	c3                   	ret    

c00308d0 <init_filestate>:
c00308d0:	55                   	push   %ebp
c00308d1:	89 e5                	mov    %esp,%ebp
c00308d3:	53                   	push   %ebx
c00308d4:	83 ec 10             	sub    $0x10,%esp
c00308d7:	e8 55 00 00 00       	call   c0030931 <__x86.get_pc_thunk.dx>
c00308dc:	81 c2 24 b7 00 00    	add    $0xb724,%edx
c00308e2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00308e9:	eb 37                	jmp    c0030922 <init_filestate+0x52>
c00308eb:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c00308f1:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c00308f4:	89 c8                	mov    %ecx,%eax
c00308f6:	01 c0                	add    %eax,%eax
c00308f8:	01 c8                	add    %ecx,%eax
c00308fa:	c1 e0 02             	shl    $0x2,%eax
c00308fd:	01 d8                	add    %ebx,%eax
c00308ff:	c6 00 00             	movb   $0x0,(%eax)
c0030902:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c0030908:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c003090b:	89 c8                	mov    %ecx,%eax
c003090d:	01 c0                	add    %eax,%eax
c003090f:	01 c8                	add    %ecx,%eax
c0030911:	c1 e0 02             	shl    $0x2,%eax
c0030914:	01 d8                	add    %ebx,%eax
c0030916:	83 c0 08             	add    $0x8,%eax
c0030919:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003091f:	ff 45 f8             	incl   -0x8(%ebp)
c0030922:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030925:	83 f8 1b             	cmp    $0x1b,%eax
c0030928:	76 c1                	jbe    c00308eb <init_filestate+0x1b>
c003092a:	90                   	nop
c003092b:	83 c4 10             	add    $0x10,%esp
c003092e:	5b                   	pop    %ebx
c003092f:	5d                   	pop    %ebp
c0030930:	c3                   	ret    

c0030931 <__x86.get_pc_thunk.dx>:
c0030931:	8b 14 24             	mov    (%esp),%edx
c0030934:	c3                   	ret    

c0030935 <__x86.get_pc_thunk.bx>:
c0030935:	8b 1c 24             	mov    (%esp),%ebx
c0030938:	c3                   	ret    

c0030939 <out_byte>:
c0030939:	55                   	push   %ebp
c003093a:	89 e5                	mov    %esp,%ebp
c003093c:	83 ec 08             	sub    $0x8,%esp
c003093f:	e8 ef 00 00 00       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030944:	05 bc b6 00 00       	add    $0xb6bc,%eax
c0030949:	8b 45 08             	mov    0x8(%ebp),%eax
c003094c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003094f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030953:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030956:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030959:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003095c:	ee                   	out    %al,(%dx)
c003095d:	90                   	nop
c003095e:	c9                   	leave  
c003095f:	c3                   	ret    

c0030960 <init_i8259>:
c0030960:	55                   	push   %ebp
c0030961:	89 e5                	mov    %esp,%ebp
c0030963:	e8 cb 00 00 00       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030968:	05 98 b6 00 00       	add    $0xb698,%eax
c003096d:	68 ff 00 00 00       	push   $0xff
c0030972:	6a 21                	push   $0x21
c0030974:	e8 c0 ff ff ff       	call   c0030939 <out_byte>
c0030979:	83 c4 08             	add    $0x8,%esp
c003097c:	68 ff 00 00 00       	push   $0xff
c0030981:	68 a1 00 00 00       	push   $0xa1
c0030986:	e8 ae ff ff ff       	call   c0030939 <out_byte>
c003098b:	83 c4 08             	add    $0x8,%esp
c003098e:	6a 11                	push   $0x11
c0030990:	6a 20                	push   $0x20
c0030992:	e8 a2 ff ff ff       	call   c0030939 <out_byte>
c0030997:	83 c4 08             	add    $0x8,%esp
c003099a:	6a 20                	push   $0x20
c003099c:	6a 21                	push   $0x21
c003099e:	e8 96 ff ff ff       	call   c0030939 <out_byte>
c00309a3:	83 c4 08             	add    $0x8,%esp
c00309a6:	6a 04                	push   $0x4
c00309a8:	6a 21                	push   $0x21
c00309aa:	e8 8a ff ff ff       	call   c0030939 <out_byte>
c00309af:	83 c4 08             	add    $0x8,%esp
c00309b2:	6a 03                	push   $0x3
c00309b4:	6a 21                	push   $0x21
c00309b6:	e8 7e ff ff ff       	call   c0030939 <out_byte>
c00309bb:	83 c4 08             	add    $0x8,%esp
c00309be:	6a 11                	push   $0x11
c00309c0:	68 a0 00 00 00       	push   $0xa0
c00309c5:	e8 6f ff ff ff       	call   c0030939 <out_byte>
c00309ca:	83 c4 08             	add    $0x8,%esp
c00309cd:	6a 28                	push   $0x28
c00309cf:	68 a1 00 00 00       	push   $0xa1
c00309d4:	e8 60 ff ff ff       	call   c0030939 <out_byte>
c00309d9:	83 c4 08             	add    $0x8,%esp
c00309dc:	6a 02                	push   $0x2
c00309de:	68 a1 00 00 00       	push   $0xa1
c00309e3:	e8 51 ff ff ff       	call   c0030939 <out_byte>
c00309e8:	83 c4 08             	add    $0x8,%esp
c00309eb:	6a 03                	push   $0x3
c00309ed:	68 a1 00 00 00       	push   $0xa1
c00309f2:	e8 42 ff ff ff       	call   c0030939 <out_byte>
c00309f7:	83 c4 08             	add    $0x8,%esp
c00309fa:	6a 68                	push   $0x68
c00309fc:	6a 20                	push   $0x20
c00309fe:	e8 36 ff ff ff       	call   c0030939 <out_byte>
c0030a03:	83 c4 08             	add    $0x8,%esp
c0030a06:	6a 0a                	push   $0xa
c0030a08:	6a 20                	push   $0x20
c0030a0a:	e8 2a ff ff ff       	call   c0030939 <out_byte>
c0030a0f:	83 c4 08             	add    $0x8,%esp
c0030a12:	6a 68                	push   $0x68
c0030a14:	68 a0 00 00 00       	push   $0xa0
c0030a19:	e8 1b ff ff ff       	call   c0030939 <out_byte>
c0030a1e:	83 c4 08             	add    $0x8,%esp
c0030a21:	6a 0a                	push   $0xa
c0030a23:	68 a0 00 00 00       	push   $0xa0
c0030a28:	e8 0c ff ff ff       	call   c0030939 <out_byte>
c0030a2d:	83 c4 08             	add    $0x8,%esp
c0030a30:	90                   	nop
c0030a31:	c9                   	leave  
c0030a32:	c3                   	ret    

c0030a33 <__x86.get_pc_thunk.ax>:
c0030a33:	8b 04 24             	mov    (%esp),%eax
c0030a36:	c3                   	ret    

c0030a37 <add_irq_handle>:
c0030a37:	55                   	push   %ebp
c0030a38:	89 e5                	mov    %esp,%ebp
c0030a3a:	53                   	push   %ebx
c0030a3b:	83 ec 14             	sub    $0x14,%esp
c0030a3e:	e8 f2 fe ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0030a43:	81 c3 bd b5 00 00    	add    $0xb5bd,%ebx
c0030a49:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030a4d:	7e 2f                	jle    c0030a7e <add_irq_handle+0x47>
c0030a4f:	83 ec 0c             	sub    $0xc,%esp
c0030a52:	8d 83 d0 cf ff ff    	lea    -0x3030(%ebx),%eax
c0030a58:	50                   	push   %eax
c0030a59:	8d 83 1c d1 ff ff    	lea    -0x2ee4(%ebx),%eax
c0030a5f:	50                   	push   %eax
c0030a60:	6a 16                	push   $0x16
c0030a62:	8d 83 e3 cf ff ff    	lea    -0x301d(%ebx),%eax
c0030a68:	50                   	push   %eax
c0030a69:	8d 83 f8 cf ff ff    	lea    -0x3008(%ebx),%eax
c0030a6f:	50                   	push   %eax
c0030a70:	e8 d1 0f 00 00       	call   c0031a46 <printk>
c0030a75:	83 c4 20             	add    $0x20,%esp
c0030a78:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a7d:	82 8b 83 60 11 00 00 	orb    $0x0,0x116083(%ebx)
c0030a84:	83 f8 20             	cmp    $0x20,%eax
c0030a87:	7e 2f                	jle    c0030ab8 <add_irq_handle+0x81>
c0030a89:	83 ec 0c             	sub    $0xc,%esp
c0030a8c:	8d 83 42 d0 ff ff    	lea    -0x2fbe(%ebx),%eax
c0030a92:	50                   	push   %eax
c0030a93:	8d 83 1c d1 ff ff    	lea    -0x2ee4(%ebx),%eax
c0030a99:	50                   	push   %eax
c0030a9a:	6a 17                	push   $0x17
c0030a9c:	8d 83 e3 cf ff ff    	lea    -0x301d(%ebx),%eax
c0030aa2:	50                   	push   %eax
c0030aa3:	8d 83 f8 cf ff ff    	lea    -0x3008(%ebx),%eax
c0030aa9:	50                   	push   %eax
c0030aaa:	e8 97 0f 00 00       	call   c0031a46 <printk>
c0030aaf:	83 c4 20             	add    $0x20,%esp
c0030ab2:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ab7:	82 8b 83 60 11 00 00 	orb    $0x0,0x116083(%ebx)
c0030abe:	8d 50 01             	lea    0x1(%eax),%edx
c0030ac1:	89 93 60 11 00 00    	mov    %edx,0x1160(%ebx)
c0030ac7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030ace:	8d 83 20 10 00 00    	lea    0x1020(%ebx),%eax
c0030ad4:	01 d0                	add    %edx,%eax
c0030ad6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030ad9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030adc:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030adf:	89 10                	mov    %edx,(%eax)
c0030ae1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ae4:	8b 94 83 20 11 00 00 	mov    0x1120(%ebx,%eax,4),%edx
c0030aeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030aee:	89 50 04             	mov    %edx,0x4(%eax)
c0030af1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030af4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030af7:	89 94 83 20 11 00 00 	mov    %edx,0x1120(%ebx,%eax,4)
c0030afe:	90                   	nop
c0030aff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b02:	c9                   	leave  
c0030b03:	c3                   	ret    

c0030b04 <irq_handle>:
c0030b04:	55                   	push   %ebp
c0030b05:	89 e5                	mov    %esp,%ebp
c0030b07:	53                   	push   %ebx
c0030b08:	83 ec 14             	sub    $0x14,%esp
c0030b0b:	e8 25 fe ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0030b10:	81 c3 f0 b4 00 00    	add    $0xb4f0,%ebx
c0030b16:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b19:	8b 40 20             	mov    0x20(%eax),%eax
c0030b1c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b1f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030b23:	79 2a                	jns    c0030b4f <irq_handle+0x4b>
c0030b25:	8d 83 2c d1 ff ff    	lea    -0x2ed4(%ebx),%eax
c0030b2b:	50                   	push   %eax
c0030b2c:	6a 25                	push   $0x25
c0030b2e:	8d 83 e3 cf ff ff    	lea    -0x301d(%ebx),%eax
c0030b34:	50                   	push   %eax
c0030b35:	8d 83 60 d0 ff ff    	lea    -0x2fa0(%ebx),%eax
c0030b3b:	50                   	push   %eax
c0030b3c:	e8 05 0f 00 00       	call   c0031a46 <printk>
c0030b41:	83 c4 10             	add    $0x10,%esp
c0030b44:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b49:	82 e9 c7             	sub    $0xc7,%cl
c0030b4c:	00 00                	add    %al,(%eax)
c0030b4e:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c0030b54:	00 00                	add    %al,(%eax)
c0030b56:	75 13                	jne    c0030b6b <irq_handle+0x67>
c0030b58:	83 ec 0c             	sub    $0xc,%esp
c0030b5b:	ff 75 08             	pushl  0x8(%ebp)
c0030b5e:	e8 09 16 00 00       	call   c003216c <do_syscall>
c0030b63:	83 c4 10             	add    $0x10,%esp
c0030b66:	e9 ab 00 00 00       	jmp    c0030c16 <irq_handle+0x112>
c0030b6b:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030b72:	7f 34                	jg     c0030ba8 <irq_handle+0xa4>
c0030b74:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b77:	8b 40 28             	mov    0x28(%eax),%eax
c0030b7a:	83 ec 08             	sub    $0x8,%esp
c0030b7d:	50                   	push   %eax
c0030b7e:	ff 75 f0             	pushl  -0x10(%ebp)
c0030b81:	8d 83 2c d1 ff ff    	lea    -0x2ed4(%ebx),%eax
c0030b87:	50                   	push   %eax
c0030b88:	6a 29                	push   $0x29
c0030b8a:	8d 83 e3 cf ff ff    	lea    -0x301d(%ebx),%eax
c0030b90:	50                   	push   %eax
c0030b91:	8d 83 ac d0 ff ff    	lea    -0x2f54(%ebx),%eax
c0030b97:	50                   	push   %eax
c0030b98:	e8 a9 0e 00 00       	call   c0031a46 <printk>
c0030b9d:	83 c4 20             	add    $0x20,%esp
c0030ba0:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ba5:	82 eb 6e             	sub    $0x6e,%bl
c0030ba8:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030baf:	7e 65                	jle    c0030c16 <irq_handle+0x112>
c0030bb1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030bb4:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030bb9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030bbc:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030bc0:	7e 2f                	jle    c0030bf1 <irq_handle+0xed>
c0030bc2:	83 ec 0c             	sub    $0xc,%esp
c0030bc5:	8d 83 06 d1 ff ff    	lea    -0x2efa(%ebx),%eax
c0030bcb:	50                   	push   %eax
c0030bcc:	8d 83 2c d1 ff ff    	lea    -0x2ed4(%ebx),%eax
c0030bd2:	50                   	push   %eax
c0030bd3:	6a 2c                	push   $0x2c
c0030bd5:	8d 83 e3 cf ff ff    	lea    -0x301d(%ebx),%eax
c0030bdb:	50                   	push   %eax
c0030bdc:	8d 83 f8 cf ff ff    	lea    -0x3008(%ebx),%eax
c0030be2:	50                   	push   %eax
c0030be3:	e8 5e 0e 00 00       	call   c0031a46 <printk>
c0030be8:	83 c4 20             	add    $0x20,%esp
c0030beb:	b8 01 00 00 00       	mov    $0x1,%eax
c0030bf0:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c0030bf7:	20 11                	and    %dl,(%ecx)
c0030bf9:	00 00                	add    %al,(%eax)
c0030bfb:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030bfe:	eb 10                	jmp    c0030c10 <irq_handle+0x10c>
c0030c00:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c03:	8b 00                	mov    (%eax),%eax
c0030c05:	ff d0                	call   *%eax
c0030c07:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c0a:	8b 40 04             	mov    0x4(%eax),%eax
c0030c0d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c10:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030c14:	75 ea                	jne    c0030c00 <irq_handle+0xfc>
c0030c16:	90                   	nop
c0030c17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c1a:	c9                   	leave  
c0030c1b:	c3                   	ret    

c0030c1c <write_idtr>:
c0030c1c:	55                   	push   %ebp
c0030c1d:	89 e5                	mov    %esp,%ebp
c0030c1f:	e8 0f fe ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030c24:	05 dc b3 00 00       	add    $0xb3dc,%eax
c0030c29:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c2c:	4a                   	dec    %edx
c0030c2d:	66 89 90 80 19 00 00 	mov    %dx,0x1980(%eax)
c0030c34:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c37:	66 89 90 82 19 00 00 	mov    %dx,0x1982(%eax)
c0030c3e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c41:	c1 ea 10             	shr    $0x10,%edx
c0030c44:	66 89 90 84 19 00 00 	mov    %dx,0x1984(%eax)
c0030c4b:	8d 80 80 19 00 00    	lea    0x1980(%eax),%eax
c0030c51:	0f 01 18             	lidtl  (%eax)
c0030c54:	90                   	nop
c0030c55:	5d                   	pop    %ebp
c0030c56:	c3                   	ret    

c0030c57 <sti>:
c0030c57:	55                   	push   %ebp
c0030c58:	89 e5                	mov    %esp,%ebp
c0030c5a:	e8 d4 fd ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030c5f:	05 a1 b3 00 00       	add    $0xb3a1,%eax
c0030c64:	fb                   	sti    
c0030c65:	90                   	nop
c0030c66:	5d                   	pop    %ebp
c0030c67:	c3                   	ret    

c0030c68 <set_intr>:
c0030c68:	55                   	push   %ebp
c0030c69:	89 e5                	mov    %esp,%ebp
c0030c6b:	e8 c3 fd ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030c70:	05 90 b3 00 00       	add    $0xb390,%eax
c0030c75:	8b 45 10             	mov    0x10(%ebp),%eax
c0030c78:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c7b:	66 89 02             	mov    %ax,(%edx)
c0030c7e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030c81:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c84:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030c88:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c8b:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030c8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c92:	8a 50 05             	mov    0x5(%eax),%dl
c0030c95:	83 e2 f0             	and    $0xfffffff0,%edx
c0030c98:	83 ca 0e             	or     $0xe,%edx
c0030c9b:	88 50 05             	mov    %dl,0x5(%eax)
c0030c9e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ca1:	8a 50 05             	mov    0x5(%eax),%dl
c0030ca4:	83 e2 ef             	and    $0xffffffef,%edx
c0030ca7:	88 50 05             	mov    %dl,0x5(%eax)
c0030caa:	8b 45 14             	mov    0x14(%ebp),%eax
c0030cad:	83 e0 03             	and    $0x3,%eax
c0030cb0:	88 c2                	mov    %al,%dl
c0030cb2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cb5:	83 e2 03             	and    $0x3,%edx
c0030cb8:	88 d1                	mov    %dl,%cl
c0030cba:	c1 e1 05             	shl    $0x5,%ecx
c0030cbd:	8a 50 05             	mov    0x5(%eax),%dl
c0030cc0:	83 e2 9f             	and    $0xffffff9f,%edx
c0030cc3:	09 ca                	or     %ecx,%edx
c0030cc5:	88 50 05             	mov    %dl,0x5(%eax)
c0030cc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ccb:	8a 50 05             	mov    0x5(%eax),%dl
c0030cce:	83 ca 80             	or     $0xffffff80,%edx
c0030cd1:	88 50 05             	mov    %dl,0x5(%eax)
c0030cd4:	8b 45 10             	mov    0x10(%ebp),%eax
c0030cd7:	c1 e8 10             	shr    $0x10,%eax
c0030cda:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cdd:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030ce1:	90                   	nop
c0030ce2:	5d                   	pop    %ebp
c0030ce3:	c3                   	ret    

c0030ce4 <set_trap>:
c0030ce4:	55                   	push   %ebp
c0030ce5:	89 e5                	mov    %esp,%ebp
c0030ce7:	e8 47 fd ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030cec:	05 14 b3 00 00       	add    $0xb314,%eax
c0030cf1:	8b 45 10             	mov    0x10(%ebp),%eax
c0030cf4:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cf7:	66 89 02             	mov    %ax,(%edx)
c0030cfa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030cfd:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d00:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030d04:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d07:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030d0b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d0e:	8a 50 05             	mov    0x5(%eax),%dl
c0030d11:	83 ca 0f             	or     $0xf,%edx
c0030d14:	88 50 05             	mov    %dl,0x5(%eax)
c0030d17:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d1a:	8a 50 05             	mov    0x5(%eax),%dl
c0030d1d:	83 e2 ef             	and    $0xffffffef,%edx
c0030d20:	88 50 05             	mov    %dl,0x5(%eax)
c0030d23:	8b 45 14             	mov    0x14(%ebp),%eax
c0030d26:	83 e0 03             	and    $0x3,%eax
c0030d29:	88 c2                	mov    %al,%dl
c0030d2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d2e:	83 e2 03             	and    $0x3,%edx
c0030d31:	88 d1                	mov    %dl,%cl
c0030d33:	c1 e1 05             	shl    $0x5,%ecx
c0030d36:	8a 50 05             	mov    0x5(%eax),%dl
c0030d39:	83 e2 9f             	and    $0xffffff9f,%edx
c0030d3c:	09 ca                	or     %ecx,%edx
c0030d3e:	88 50 05             	mov    %dl,0x5(%eax)
c0030d41:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d44:	8a 50 05             	mov    0x5(%eax),%dl
c0030d47:	83 ca 80             	or     $0xffffff80,%edx
c0030d4a:	88 50 05             	mov    %dl,0x5(%eax)
c0030d4d:	8b 45 10             	mov    0x10(%ebp),%eax
c0030d50:	c1 e8 10             	shr    $0x10,%eax
c0030d53:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d56:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030d5a:	90                   	nop
c0030d5b:	5d                   	pop    %ebp
c0030d5c:	c3                   	ret    

c0030d5d <init_idt>:
c0030d5d:	55                   	push   %ebp
c0030d5e:	89 e5                	mov    %esp,%ebp
c0030d60:	53                   	push   %ebx
c0030d61:	83 ec 10             	sub    $0x10,%esp
c0030d64:	e8 cc fb ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0030d69:	81 c3 97 b2 00 00    	add    $0xb297,%ebx
c0030d6f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030d76:	eb 2b                	jmp    c0030da3 <init_idt+0x46>
c0030d78:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0030d7e:	89 c2                	mov    %eax,%edx
c0030d80:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030d83:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030d8a:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c0030d90:	01 c8                	add    %ecx,%eax
c0030d92:	6a 00                	push   $0x0
c0030d94:	52                   	push   %edx
c0030d95:	6a 08                	push   $0x8
c0030d97:	50                   	push   %eax
c0030d98:	e8 47 ff ff ff       	call   c0030ce4 <set_trap>
c0030d9d:	83 c4 10             	add    $0x10,%esp
c0030da0:	ff 45 f8             	incl   -0x8(%ebp)
c0030da3:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030daa:	7e cc                	jle    c0030d78 <init_idt+0x1b>
c0030dac:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030db2:	6a 00                	push   $0x0
c0030db4:	50                   	push   %eax
c0030db5:	6a 08                	push   $0x8
c0030db7:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c0030dbd:	50                   	push   %eax
c0030dbe:	e8 21 ff ff ff       	call   c0030ce4 <set_trap>
c0030dc3:	83 c4 10             	add    $0x10,%esp
c0030dc6:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030dcc:	89 c2                	mov    %eax,%edx
c0030dce:	8d 83 88 11 00 00    	lea    0x1188(%ebx),%eax
c0030dd4:	6a 00                	push   $0x0
c0030dd6:	52                   	push   %edx
c0030dd7:	6a 08                	push   $0x8
c0030dd9:	50                   	push   %eax
c0030dda:	e8 05 ff ff ff       	call   c0030ce4 <set_trap>
c0030ddf:	83 c4 10             	add    $0x10,%esp
c0030de2:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030de8:	89 c2                	mov    %eax,%edx
c0030dea:	8d 83 90 11 00 00    	lea    0x1190(%ebx),%eax
c0030df0:	6a 00                	push   $0x0
c0030df2:	52                   	push   %edx
c0030df3:	6a 08                	push   $0x8
c0030df5:	50                   	push   %eax
c0030df6:	e8 e9 fe ff ff       	call   c0030ce4 <set_trap>
c0030dfb:	83 c4 10             	add    $0x10,%esp
c0030dfe:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030e04:	89 c2                	mov    %eax,%edx
c0030e06:	8d 83 98 11 00 00    	lea    0x1198(%ebx),%eax
c0030e0c:	6a 00                	push   $0x0
c0030e0e:	52                   	push   %edx
c0030e0f:	6a 08                	push   $0x8
c0030e11:	50                   	push   %eax
c0030e12:	e8 cd fe ff ff       	call   c0030ce4 <set_trap>
c0030e17:	83 c4 10             	add    $0x10,%esp
c0030e1a:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030e20:	89 c2                	mov    %eax,%edx
c0030e22:	8d 83 a0 11 00 00    	lea    0x11a0(%ebx),%eax
c0030e28:	6a 00                	push   $0x0
c0030e2a:	52                   	push   %edx
c0030e2b:	6a 08                	push   $0x8
c0030e2d:	50                   	push   %eax
c0030e2e:	e8 b1 fe ff ff       	call   c0030ce4 <set_trap>
c0030e33:	83 c4 10             	add    $0x10,%esp
c0030e36:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030e3c:	89 c2                	mov    %eax,%edx
c0030e3e:	8d 83 a8 11 00 00    	lea    0x11a8(%ebx),%eax
c0030e44:	6a 00                	push   $0x0
c0030e46:	52                   	push   %edx
c0030e47:	6a 08                	push   $0x8
c0030e49:	50                   	push   %eax
c0030e4a:	e8 95 fe ff ff       	call   c0030ce4 <set_trap>
c0030e4f:	83 c4 10             	add    $0x10,%esp
c0030e52:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0030e58:	89 c2                	mov    %eax,%edx
c0030e5a:	8d 83 b0 11 00 00    	lea    0x11b0(%ebx),%eax
c0030e60:	6a 00                	push   $0x0
c0030e62:	52                   	push   %edx
c0030e63:	6a 08                	push   $0x8
c0030e65:	50                   	push   %eax
c0030e66:	e8 79 fe ff ff       	call   c0030ce4 <set_trap>
c0030e6b:	83 c4 10             	add    $0x10,%esp
c0030e6e:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030e74:	89 c2                	mov    %eax,%edx
c0030e76:	8d 83 b8 11 00 00    	lea    0x11b8(%ebx),%eax
c0030e7c:	6a 00                	push   $0x0
c0030e7e:	52                   	push   %edx
c0030e7f:	6a 08                	push   $0x8
c0030e81:	50                   	push   %eax
c0030e82:	e8 5d fe ff ff       	call   c0030ce4 <set_trap>
c0030e87:	83 c4 10             	add    $0x10,%esp
c0030e8a:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030e90:	89 c2                	mov    %eax,%edx
c0030e92:	8d 83 c0 11 00 00    	lea    0x11c0(%ebx),%eax
c0030e98:	6a 00                	push   $0x0
c0030e9a:	52                   	push   %edx
c0030e9b:	6a 08                	push   $0x8
c0030e9d:	50                   	push   %eax
c0030e9e:	e8 41 fe ff ff       	call   c0030ce4 <set_trap>
c0030ea3:	83 c4 10             	add    $0x10,%esp
c0030ea6:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0030eac:	89 c2                	mov    %eax,%edx
c0030eae:	8d 83 c8 11 00 00    	lea    0x11c8(%ebx),%eax
c0030eb4:	6a 00                	push   $0x0
c0030eb6:	52                   	push   %edx
c0030eb7:	6a 08                	push   $0x8
c0030eb9:	50                   	push   %eax
c0030eba:	e8 25 fe ff ff       	call   c0030ce4 <set_trap>
c0030ebf:	83 c4 10             	add    $0x10,%esp
c0030ec2:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0030ec8:	89 c2                	mov    %eax,%edx
c0030eca:	8d 83 d0 11 00 00    	lea    0x11d0(%ebx),%eax
c0030ed0:	6a 00                	push   $0x0
c0030ed2:	52                   	push   %edx
c0030ed3:	6a 08                	push   $0x8
c0030ed5:	50                   	push   %eax
c0030ed6:	e8 09 fe ff ff       	call   c0030ce4 <set_trap>
c0030edb:	83 c4 10             	add    $0x10,%esp
c0030ede:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0030ee4:	89 c2                	mov    %eax,%edx
c0030ee6:	8d 83 d8 11 00 00    	lea    0x11d8(%ebx),%eax
c0030eec:	6a 00                	push   $0x0
c0030eee:	52                   	push   %edx
c0030eef:	6a 08                	push   $0x8
c0030ef1:	50                   	push   %eax
c0030ef2:	e8 ed fd ff ff       	call   c0030ce4 <set_trap>
c0030ef7:	83 c4 10             	add    $0x10,%esp
c0030efa:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030f00:	89 c2                	mov    %eax,%edx
c0030f02:	8d 83 e0 11 00 00    	lea    0x11e0(%ebx),%eax
c0030f08:	6a 00                	push   $0x0
c0030f0a:	52                   	push   %edx
c0030f0b:	6a 08                	push   $0x8
c0030f0d:	50                   	push   %eax
c0030f0e:	e8 d1 fd ff ff       	call   c0030ce4 <set_trap>
c0030f13:	83 c4 10             	add    $0x10,%esp
c0030f16:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0030f1c:	89 c2                	mov    %eax,%edx
c0030f1e:	8d 83 e8 11 00 00    	lea    0x11e8(%ebx),%eax
c0030f24:	6a 00                	push   $0x0
c0030f26:	52                   	push   %edx
c0030f27:	6a 08                	push   $0x8
c0030f29:	50                   	push   %eax
c0030f2a:	e8 b5 fd ff ff       	call   c0030ce4 <set_trap>
c0030f2f:	83 c4 10             	add    $0x10,%esp
c0030f32:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0030f38:	89 c2                	mov    %eax,%edx
c0030f3a:	8d 83 f0 11 00 00    	lea    0x11f0(%ebx),%eax
c0030f40:	6a 00                	push   $0x0
c0030f42:	52                   	push   %edx
c0030f43:	6a 08                	push   $0x8
c0030f45:	50                   	push   %eax
c0030f46:	e8 99 fd ff ff       	call   c0030ce4 <set_trap>
c0030f4b:	83 c4 10             	add    $0x10,%esp
c0030f4e:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0030f54:	89 c2                	mov    %eax,%edx
c0030f56:	8d 83 80 15 00 00    	lea    0x1580(%ebx),%eax
c0030f5c:	6a 03                	push   $0x3
c0030f5e:	52                   	push   %edx
c0030f5f:	6a 08                	push   $0x8
c0030f61:	50                   	push   %eax
c0030f62:	e8 7d fd ff ff       	call   c0030ce4 <set_trap>
c0030f67:	83 c4 10             	add    $0x10,%esp
c0030f6a:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030f70:	89 c2                	mov    %eax,%edx
c0030f72:	8d 83 80 12 00 00    	lea    0x1280(%ebx),%eax
c0030f78:	6a 00                	push   $0x0
c0030f7a:	52                   	push   %edx
c0030f7b:	6a 08                	push   $0x8
c0030f7d:	50                   	push   %eax
c0030f7e:	e8 e5 fc ff ff       	call   c0030c68 <set_intr>
c0030f83:	83 c4 10             	add    $0x10,%esp
c0030f86:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0030f8c:	89 c2                	mov    %eax,%edx
c0030f8e:	8d 83 88 12 00 00    	lea    0x1288(%ebx),%eax
c0030f94:	6a 00                	push   $0x0
c0030f96:	52                   	push   %edx
c0030f97:	6a 08                	push   $0x8
c0030f99:	50                   	push   %eax
c0030f9a:	e8 c9 fc ff ff       	call   c0030c68 <set_intr>
c0030f9f:	83 c4 10             	add    $0x10,%esp
c0030fa2:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0030fa8:	89 c2                	mov    %eax,%edx
c0030faa:	8d 83 f0 12 00 00    	lea    0x12f0(%ebx),%eax
c0030fb0:	6a 00                	push   $0x0
c0030fb2:	52                   	push   %edx
c0030fb3:	6a 08                	push   $0x8
c0030fb5:	50                   	push   %eax
c0030fb6:	e8 ad fc ff ff       	call   c0030c68 <set_intr>
c0030fbb:	83 c4 10             	add    $0x10,%esp
c0030fbe:	68 00 08 00 00       	push   $0x800
c0030fc3:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c0030fc9:	50                   	push   %eax
c0030fca:	e8 4d fc ff ff       	call   c0030c1c <write_idtr>
c0030fcf:	83 c4 08             	add    $0x8,%esp
c0030fd2:	e8 80 fc ff ff       	call   c0030c57 <sti>
c0030fd7:	90                   	nop
c0030fd8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030fdb:	c9                   	leave  
c0030fdc:	c3                   	ret    

c0030fdd <write_cr3>:
c0030fdd:	55                   	push   %ebp
c0030fde:	89 e5                	mov    %esp,%ebp
c0030fe0:	e8 4e fa ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0030fe5:	05 1b b0 00 00       	add    $0xb01b,%eax
c0030fea:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fed:	0f 22 d8             	mov    %eax,%cr3
c0030ff0:	90                   	nop
c0030ff1:	5d                   	pop    %ebp
c0030ff2:	c3                   	ret    

c0030ff3 <loader>:
c0030ff3:	55                   	push   %ebp
c0030ff4:	89 e5                	mov    %esp,%ebp
c0030ff6:	53                   	push   %ebx
c0030ff7:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c0030ffd:	e8 33 f9 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031002:	81 c3 fe af 00 00    	add    $0xaffe,%ebx
c0031008:	83 ec 04             	sub    $0x4,%esp
c003100b:	68 00 10 00 00       	push   $0x1000
c0031010:	6a 00                	push   $0x0
c0031012:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c0031018:	50                   	push   %eax
c0031019:	e8 b1 04 00 00       	call   c00314cf <ide_read>
c003101e:	83 c4 10             	add    $0x10,%esp
c0031021:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c0031027:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003102a:	8d 83 28 d2 ff ff    	lea    -0x2dd8(%ebx),%eax
c0031030:	50                   	push   %eax
c0031031:	6a 1f                	push   $0x1f
c0031033:	8d 83 38 d1 ff ff    	lea    -0x2ec8(%ebx),%eax
c0031039:	50                   	push   %eax
c003103a:	8d 83 48 d1 ff ff    	lea    -0x2eb8(%ebx),%eax
c0031040:	50                   	push   %eax
c0031041:	e8 00 0a 00 00       	call   c0031a46 <printk>
c0031046:	83 c4 10             	add    $0x10,%esp
c0031049:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003104c:	8b 50 1c             	mov    0x1c(%eax),%edx
c003104f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031052:	01 d0                	add    %edx,%eax
c0031054:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031057:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003105a:	8b 40 2c             	mov    0x2c(%eax),%eax
c003105d:	0f b7 c0             	movzwl %ax,%eax
c0031060:	c1 e0 05             	shl    $0x5,%eax
c0031063:	89 c2                	mov    %eax,%edx
c0031065:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031068:	01 d0                	add    %edx,%eax
c003106a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003106d:	e9 e5 00 00 00       	jmp    c0031157 <loader+0x164>
c0031072:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031075:	8b 00                	mov    (%eax),%eax
c0031077:	83 f8 01             	cmp    $0x1,%eax
c003107a:	0f 85 d3 00 00 00    	jne    c0031153 <loader+0x160>
c0031080:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031083:	8b 40 14             	mov    0x14(%eax),%eax
c0031086:	89 c2                	mov    %eax,%edx
c0031088:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003108b:	8b 40 08             	mov    0x8(%eax),%eax
c003108e:	83 ec 08             	sub    $0x8,%esp
c0031091:	52                   	push   %edx
c0031092:	50                   	push   %eax
c0031093:	e8 c8 11 00 00       	call   c0032260 <mm_malloc>
c0031098:	83 c4 10             	add    $0x10,%esp
c003109b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003109e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310a1:	8b 50 04             	mov    0x4(%eax),%edx
c00310a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00310a7:	83 ec 08             	sub    $0x8,%esp
c00310aa:	52                   	push   %edx
c00310ab:	50                   	push   %eax
c00310ac:	8d 83 28 d2 ff ff    	lea    -0x2dd8(%ebx),%eax
c00310b2:	50                   	push   %eax
c00310b3:	6a 2f                	push   $0x2f
c00310b5:	8d 83 38 d1 ff ff    	lea    -0x2ec8(%ebx),%eax
c00310bb:	50                   	push   %eax
c00310bc:	8d 83 84 d1 ff ff    	lea    -0x2e7c(%ebx),%eax
c00310c2:	50                   	push   %eax
c00310c3:	e8 7e 09 00 00       	call   c0031a46 <printk>
c00310c8:	83 c4 20             	add    $0x20,%esp
c00310cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310ce:	8b 40 04             	mov    0x4(%eax),%eax
c00310d1:	3d 00 10 00 00       	cmp    $0x1000,%eax
c00310d6:	76 2f                	jbe    c0031107 <loader+0x114>
c00310d8:	83 ec 0c             	sub    $0xc,%esp
c00310db:	8d 83 c4 d1 ff ff    	lea    -0x2e3c(%ebx),%eax
c00310e1:	50                   	push   %eax
c00310e2:	8d 83 28 d2 ff ff    	lea    -0x2dd8(%ebx),%eax
c00310e8:	50                   	push   %eax
c00310e9:	6a 30                	push   $0x30
c00310eb:	8d 83 38 d1 ff ff    	lea    -0x2ec8(%ebx),%eax
c00310f1:	50                   	push   %eax
c00310f2:	8d 83 dc d1 ff ff    	lea    -0x2e24(%ebx),%eax
c00310f8:	50                   	push   %eax
c00310f9:	e8 48 09 00 00       	call   c0031a46 <printk>
c00310fe:	83 c4 20             	add    $0x20,%esp
c0031101:	b8 01 00 00 00       	mov    $0x1,%eax
c0031106:	82 8b 45 f4 8b 50 10 	orb    $0x10,0x508bf445(%ebx)
c003110d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031110:	8b 48 04             	mov    0x4(%eax),%ecx
c0031113:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031116:	01 c1                	add    %eax,%ecx
c0031118:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003111b:	83 ec 04             	sub    $0x4,%esp
c003111e:	52                   	push   %edx
c003111f:	51                   	push   %ecx
c0031120:	50                   	push   %eax
c0031121:	e8 ce 13 00 00       	call   c00324f4 <memcpy>
c0031126:	83 c4 10             	add    $0x10,%esp
c0031129:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003112c:	8b 50 08             	mov    0x8(%eax),%edx
c003112f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031132:	8b 40 14             	mov    0x14(%eax),%eax
c0031135:	01 d0                	add    %edx,%eax
c0031137:	48                   	dec    %eax
c0031138:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003113b:	c7 c0 c0 de 04 c0    	mov    $0xc004dec0,%eax
c0031141:	8b 00                	mov    (%eax),%eax
c0031143:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0031146:	73 0b                	jae    c0031153 <loader+0x160>
c0031148:	c7 c0 c0 de 04 c0    	mov    $0xc004dec0,%eax
c003114e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0031151:	89 10                	mov    %edx,(%eax)
c0031153:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0031157:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003115a:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c003115d:	0f 82 0f ff ff ff    	jb     c0031072 <loader+0x7f>
c0031163:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031166:	8b 40 18             	mov    0x18(%eax),%eax
c0031169:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c003116f:	83 ec 08             	sub    $0x8,%esp
c0031172:	68 00 00 10 00       	push   $0x100000
c0031177:	68 00 00 f0 bf       	push   $0xbff00000
c003117c:	e8 df 10 00 00       	call   c0032260 <mm_malloc>
c0031181:	83 c4 10             	add    $0x10,%esp
c0031184:	e8 26 09 00 00       	call   c0031aaf <get_ucr3>
c0031189:	83 ec 0c             	sub    $0xc,%esp
c003118c:	50                   	push   %eax
c003118d:	e8 4b fe ff ff       	call   c0030fdd <write_cr3>
c0031192:	83 c4 10             	add    $0x10,%esp
c0031195:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c003119b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003119e:	c9                   	leave  
c003119f:	c3                   	ret    

c00311a0 <in_byte>:
c00311a0:	55                   	push   %ebp
c00311a1:	89 e5                	mov    %esp,%ebp
c00311a3:	83 ec 14             	sub    $0x14,%esp
c00311a6:	e8 88 f8 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00311ab:	05 55 ae 00 00       	add    $0xae55,%eax
c00311b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00311b3:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00311b7:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00311ba:	89 c2                	mov    %eax,%edx
c00311bc:	ec                   	in     (%dx),%al
c00311bd:	88 45 ff             	mov    %al,-0x1(%ebp)
c00311c0:	8a 45 ff             	mov    -0x1(%ebp),%al
c00311c3:	c9                   	leave  
c00311c4:	c3                   	ret    

c00311c5 <out_byte>:
c00311c5:	55                   	push   %ebp
c00311c6:	89 e5                	mov    %esp,%ebp
c00311c8:	83 ec 08             	sub    $0x8,%esp
c00311cb:	e8 63 f8 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00311d0:	05 30 ae 00 00       	add    $0xae30,%eax
c00311d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00311d8:	8b 55 0c             	mov    0xc(%ebp),%edx
c00311db:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00311df:	88 55 f8             	mov    %dl,-0x8(%ebp)
c00311e2:	8a 45 f8             	mov    -0x8(%ebp),%al
c00311e5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00311e8:	ee                   	out    %al,(%dx)
c00311e9:	90                   	nop
c00311ea:	c9                   	leave  
c00311eb:	c3                   	ret    

c00311ec <out_long>:
c00311ec:	55                   	push   %ebp
c00311ed:	89 e5                	mov    %esp,%ebp
c00311ef:	83 ec 04             	sub    $0x4,%esp
c00311f2:	e8 3c f8 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00311f7:	05 09 ae 00 00       	add    $0xae09,%eax
c00311fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00311ff:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031203:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031206:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031209:	ef                   	out    %eax,(%dx)
c003120a:	90                   	nop
c003120b:	c9                   	leave  
c003120c:	c3                   	ret    

c003120d <dma_prepare>:
c003120d:	55                   	push   %ebp
c003120e:	89 e5                	mov    %esp,%ebp
c0031210:	83 ec 10             	sub    $0x10,%esp
c0031213:	e8 1b f8 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031218:	05 e8 ad 00 00       	add    $0xade8,%eax
c003121d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031220:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031226:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0031229:	c7 c2 b0 f1 06 c0    	mov    $0xc006f1b0,%edx
c003122f:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0031232:	89 0a                	mov    %ecx,(%edx)
c0031234:	c7 c2 b0 f1 06 c0    	mov    $0xc006f1b0,%edx
c003123a:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0031240:	c7 c2 b0 f1 06 c0    	mov    $0xc006f1b0,%edx
c0031246:	8a 4a 07             	mov    0x7(%edx),%cl
c0031249:	83 c9 80             	or     $0xffffff80,%ecx
c003124c:	88 4a 07             	mov    %cl,0x7(%edx)
c003124f:	c7 c1 b0 f1 06 c0    	mov    $0xc006f1b0,%ecx
c0031255:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0031259:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c003125f:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0031263:	c7 c0 b0 f1 06 c0    	mov    $0xc006f1b0,%eax
c0031269:	05 00 00 00 40       	add    $0x40000000,%eax
c003126e:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0031271:	ff 75 f8             	pushl  -0x8(%ebp)
c0031274:	68 44 c0 00 00       	push   $0xc044
c0031279:	e8 6e ff ff ff       	call   c00311ec <out_long>
c003127e:	83 c4 08             	add    $0x8,%esp
c0031281:	90                   	nop
c0031282:	c9                   	leave  
c0031283:	c3                   	ret    

c0031284 <dma_issue_read>:
c0031284:	55                   	push   %ebp
c0031285:	89 e5                	mov    %esp,%ebp
c0031287:	e8 a7 f7 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003128c:	05 74 ad 00 00       	add    $0xad74,%eax
c0031291:	68 40 c0 00 00       	push   $0xc040
c0031296:	e8 05 ff ff ff       	call   c00311a0 <in_byte>
c003129b:	83 c4 04             	add    $0x4,%esp
c003129e:	83 c8 09             	or     $0x9,%eax
c00312a1:	0f b6 c0             	movzbl %al,%eax
c00312a4:	50                   	push   %eax
c00312a5:	68 40 c0 00 00       	push   $0xc040
c00312aa:	e8 16 ff ff ff       	call   c00311c5 <out_byte>
c00312af:	83 c4 08             	add    $0x8,%esp
c00312b2:	90                   	nop
c00312b3:	c9                   	leave  
c00312b4:	c3                   	ret    

c00312b5 <cache_init>:
c00312b5:	55                   	push   %ebp
c00312b6:	89 e5                	mov    %esp,%ebp
c00312b8:	53                   	push   %ebx
c00312b9:	83 ec 10             	sub    $0x10,%esp
c00312bc:	e8 70 f6 ff ff       	call   c0030931 <__x86.get_pc_thunk.dx>
c00312c1:	81 c2 3f ad 00 00    	add    $0xad3f,%edx
c00312c7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00312ce:	eb 1b                	jmp    c00312eb <cache_init+0x36>
c00312d0:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c00312d3:	8d 9a a4 19 00 00    	lea    0x19a4(%edx),%ebx
c00312d9:	89 c8                	mov    %ecx,%eax
c00312db:	c1 e0 06             	shl    $0x6,%eax
c00312de:	01 c8                	add    %ecx,%eax
c00312e0:	c1 e0 03             	shl    $0x3,%eax
c00312e3:	01 d8                	add    %ebx,%eax
c00312e5:	c6 00 00             	movb   $0x0,(%eax)
c00312e8:	ff 45 f8             	incl   -0x8(%ebp)
c00312eb:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c00312ef:	7e df                	jle    c00312d0 <cache_init+0x1b>
c00312f1:	90                   	nop
c00312f2:	83 c4 10             	add    $0x10,%esp
c00312f5:	5b                   	pop    %ebx
c00312f6:	5d                   	pop    %ebp
c00312f7:	c3                   	ret    

c00312f8 <cache_writeback>:
c00312f8:	55                   	push   %ebp
c00312f9:	89 e5                	mov    %esp,%ebp
c00312fb:	53                   	push   %ebx
c00312fc:	83 ec 14             	sub    $0x14,%esp
c00312ff:	e8 31 f6 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031304:	81 c3 fc ac 00 00    	add    $0xacfc,%ebx
c003130a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031311:	eb 72                	jmp    c0031385 <cache_writeback+0x8d>
c0031313:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031316:	8d 8b a5 19 00 00    	lea    0x19a5(%ebx),%ecx
c003131c:	89 d0                	mov    %edx,%eax
c003131e:	c1 e0 06             	shl    $0x6,%eax
c0031321:	01 d0                	add    %edx,%eax
c0031323:	c1 e0 03             	shl    $0x3,%eax
c0031326:	01 c8                	add    %ecx,%eax
c0031328:	8a 00                	mov    (%eax),%al
c003132a:	3c 01                	cmp    $0x1,%al
c003132c:	75 54                	jne    c0031382 <cache_writeback+0x8a>
c003132e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031331:	8d 8b a0 19 00 00    	lea    0x19a0(%ebx),%ecx
c0031337:	89 d0                	mov    %edx,%eax
c0031339:	c1 e0 06             	shl    $0x6,%eax
c003133c:	01 d0                	add    %edx,%eax
c003133e:	c1 e0 03             	shl    $0x3,%eax
c0031341:	01 c8                	add    %ecx,%eax
c0031343:	8b 10                	mov    (%eax),%edx
c0031345:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0031348:	89 c8                	mov    %ecx,%eax
c003134a:	c1 e0 06             	shl    $0x6,%eax
c003134d:	01 c8                	add    %ecx,%eax
c003134f:	c1 e0 03             	shl    $0x3,%eax
c0031352:	8d 8b a0 19 00 00    	lea    0x19a0(%ebx),%ecx
c0031358:	01 c8                	add    %ecx,%eax
c003135a:	83 c0 06             	add    $0x6,%eax
c003135d:	83 ec 08             	sub    $0x8,%esp
c0031360:	52                   	push   %edx
c0031361:	50                   	push   %eax
c0031362:	e8 db 04 00 00       	call   c0031842 <disk_do_write>
c0031367:	83 c4 10             	add    $0x10,%esp
c003136a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003136d:	8d 8b a5 19 00 00    	lea    0x19a5(%ebx),%ecx
c0031373:	89 d0                	mov    %edx,%eax
c0031375:	c1 e0 06             	shl    $0x6,%eax
c0031378:	01 d0                	add    %edx,%eax
c003137a:	c1 e0 03             	shl    $0x3,%eax
c003137d:	01 c8                	add    %ecx,%eax
c003137f:	c6 00 00             	movb   $0x0,(%eax)
c0031382:	ff 45 f4             	incl   -0xc(%ebp)
c0031385:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0031389:	7e 88                	jle    c0031313 <cache_writeback+0x1b>
c003138b:	90                   	nop
c003138c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003138f:	c9                   	leave  
c0031390:	c3                   	ret    

c0031391 <cache_fetch>:
c0031391:	55                   	push   %ebp
c0031392:	89 e5                	mov    %esp,%ebp
c0031394:	53                   	push   %ebx
c0031395:	83 ec 14             	sub    $0x14,%esp
c0031398:	e8 98 f5 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c003139d:	81 c3 63 ac 00 00    	add    $0xac63,%ebx
c00313a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00313a6:	83 e0 7f             	and    $0x7f,%eax
c00313a9:	89 c2                	mov    %eax,%edx
c00313ab:	89 d0                	mov    %edx,%eax
c00313ad:	c1 e0 06             	shl    $0x6,%eax
c00313b0:	01 d0                	add    %edx,%eax
c00313b2:	c1 e0 03             	shl    $0x3,%eax
c00313b5:	8d 93 a0 19 00 00    	lea    0x19a0(%ebx),%edx
c00313bb:	01 d0                	add    %edx,%eax
c00313bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00313c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313c3:	8a 40 04             	mov    0x4(%eax),%al
c00313c6:	3c 01                	cmp    $0x1,%al
c00313c8:	75 0a                	jne    c00313d4 <cache_fetch+0x43>
c00313ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313cd:	8b 00                	mov    (%eax),%eax
c00313cf:	3b 45 08             	cmp    0x8(%ebp),%eax
c00313d2:	74 57                	je     c003142b <cache_fetch+0x9a>
c00313d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313d7:	8a 40 04             	mov    0x4(%eax),%al
c00313da:	3c 01                	cmp    $0x1,%al
c00313dc:	75 22                	jne    c0031400 <cache_fetch+0x6f>
c00313de:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313e1:	8a 40 05             	mov    0x5(%eax),%al
c00313e4:	3c 01                	cmp    $0x1,%al
c00313e6:	75 18                	jne    c0031400 <cache_fetch+0x6f>
c00313e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313eb:	8b 00                	mov    (%eax),%eax
c00313ed:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00313f0:	83 c2 06             	add    $0x6,%edx
c00313f3:	83 ec 08             	sub    $0x8,%esp
c00313f6:	50                   	push   %eax
c00313f7:	52                   	push   %edx
c00313f8:	e8 45 04 00 00       	call   c0031842 <disk_do_write>
c00313fd:	83 c4 10             	add    $0x10,%esp
c0031400:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031403:	83 c0 06             	add    $0x6,%eax
c0031406:	83 ec 08             	sub    $0x8,%esp
c0031409:	ff 75 08             	pushl  0x8(%ebp)
c003140c:	50                   	push   %eax
c003140d:	e8 c5 03 00 00       	call   c00317d7 <disk_do_read>
c0031412:	83 c4 10             	add    $0x10,%esp
c0031415:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031418:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c003141c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003141f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031422:	89 10                	mov    %edx,(%eax)
c0031424:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031427:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c003142b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003142e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031431:	c9                   	leave  
c0031432:	c3                   	ret    

c0031433 <read_byte>:
c0031433:	55                   	push   %ebp
c0031434:	89 e5                	mov    %esp,%ebp
c0031436:	83 ec 18             	sub    $0x18,%esp
c0031439:	e8 f5 f5 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003143e:	05 c2 ab 00 00       	add    $0xabc2,%eax
c0031443:	8b 45 08             	mov    0x8(%ebp),%eax
c0031446:	c1 e8 09             	shr    $0x9,%eax
c0031449:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003144c:	83 ec 0c             	sub    $0xc,%esp
c003144f:	ff 75 f4             	pushl  -0xc(%ebp)
c0031452:	e8 3a ff ff ff       	call   c0031391 <cache_fetch>
c0031457:	83 c4 10             	add    $0x10,%esp
c003145a:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003145d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031460:	25 ff 01 00 00       	and    $0x1ff,%eax
c0031465:	89 c2                	mov    %eax,%edx
c0031467:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003146a:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c003146e:	c9                   	leave  
c003146f:	c3                   	ret    

c0031470 <write_byte>:
c0031470:	55                   	push   %ebp
c0031471:	89 e5                	mov    %esp,%ebp
c0031473:	83 ec 28             	sub    $0x28,%esp
c0031476:	e8 b8 f5 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003147b:	05 85 ab 00 00       	add    $0xab85,%eax
c0031480:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031483:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0031486:	8b 45 08             	mov    0x8(%ebp),%eax
c0031489:	c1 e8 09             	shr    $0x9,%eax
c003148c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003148f:	83 ec 0c             	sub    $0xc,%esp
c0031492:	ff 75 f4             	pushl  -0xc(%ebp)
c0031495:	e8 f7 fe ff ff       	call   c0031391 <cache_fetch>
c003149a:	83 c4 10             	add    $0x10,%esp
c003149d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00314a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00314a3:	25 ff 01 00 00       	and    $0x1ff,%eax
c00314a8:	89 c1                	mov    %eax,%ecx
c00314aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00314ad:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c00314b0:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c00314b4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00314b7:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c00314bb:	90                   	nop
c00314bc:	c9                   	leave  
c00314bd:	c3                   	ret    

c00314be <wait_intr>:
c00314be:	55                   	push   %ebp
c00314bf:	89 e5                	mov    %esp,%ebp
c00314c1:	e8 6d f5 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00314c6:	05 3a ab 00 00       	add    $0xab3a,%eax
c00314cb:	f4                   	hlt    
c00314cc:	90                   	nop
c00314cd:	5d                   	pop    %ebp
c00314ce:	c3                   	ret    

c00314cf <ide_read>:
c00314cf:	55                   	push   %ebp
c00314d0:	89 e5                	mov    %esp,%ebp
c00314d2:	56                   	push   %esi
c00314d3:	53                   	push   %ebx
c00314d4:	83 ec 10             	sub    $0x10,%esp
c00314d7:	e8 59 f4 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c00314dc:	81 c3 24 ab 00 00    	add    $0xab24,%ebx
c00314e2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00314e9:	eb 22                	jmp    c003150d <ide_read+0x3e>
c00314eb:	8b 55 08             	mov    0x8(%ebp),%edx
c00314ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00314f1:	8d 34 02             	lea    (%edx,%eax,1),%esi
c00314f4:	8b 55 0c             	mov    0xc(%ebp),%edx
c00314f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00314fa:	01 d0                	add    %edx,%eax
c00314fc:	83 ec 0c             	sub    $0xc,%esp
c00314ff:	50                   	push   %eax
c0031500:	e8 2e ff ff ff       	call   c0031433 <read_byte>
c0031505:	83 c4 10             	add    $0x10,%esp
c0031508:	88 06                	mov    %al,(%esi)
c003150a:	ff 45 f4             	incl   -0xc(%ebp)
c003150d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031510:	3b 45 10             	cmp    0x10(%ebp),%eax
c0031513:	72 d6                	jb     c00314eb <ide_read+0x1c>
c0031515:	90                   	nop
c0031516:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0031519:	5b                   	pop    %ebx
c003151a:	5e                   	pop    %esi
c003151b:	5d                   	pop    %ebp
c003151c:	c3                   	ret    

c003151d <ide_write>:
c003151d:	55                   	push   %ebp
c003151e:	89 e5                	mov    %esp,%ebp
c0031520:	53                   	push   %ebx
c0031521:	83 ec 14             	sub    $0x14,%esp
c0031524:	e8 0c f4 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031529:	81 c3 d7 aa 00 00    	add    $0xaad7,%ebx
c003152f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031536:	eb 25                	jmp    c003155d <ide_write+0x40>
c0031538:	8b 55 08             	mov    0x8(%ebp),%edx
c003153b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003153e:	01 d0                	add    %edx,%eax
c0031540:	8a 00                	mov    (%eax),%al
c0031542:	0f b6 c0             	movzbl %al,%eax
c0031545:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0031548:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003154b:	01 ca                	add    %ecx,%edx
c003154d:	83 ec 08             	sub    $0x8,%esp
c0031550:	50                   	push   %eax
c0031551:	52                   	push   %edx
c0031552:	e8 19 ff ff ff       	call   c0031470 <write_byte>
c0031557:	83 c4 10             	add    $0x10,%esp
c003155a:	ff 45 f4             	incl   -0xc(%ebp)
c003155d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031560:	3b 45 10             	cmp    0x10(%ebp),%eax
c0031563:	72 d3                	jb     c0031538 <ide_write+0x1b>
c0031565:	90                   	nop
c0031566:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031569:	c9                   	leave  
c003156a:	c3                   	ret    

c003156b <ide_writeback>:
c003156b:	55                   	push   %ebp
c003156c:	89 e5                	mov    %esp,%ebp
c003156e:	53                   	push   %ebx
c003156f:	83 ec 04             	sub    $0x4,%esp
c0031572:	e8 be f3 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031577:	81 c3 89 aa 00 00    	add    $0xaa89,%ebx
c003157d:	8b 83 a4 1d 01 00    	mov    0x11da4(%ebx),%eax
c0031583:	40                   	inc    %eax
c0031584:	89 83 a4 1d 01 00    	mov    %eax,0x11da4(%ebx)
c003158a:	8b 83 a4 1d 01 00    	mov    0x11da4(%ebx),%eax
c0031590:	83 f8 64             	cmp    $0x64,%eax
c0031593:	75 0f                	jne    c00315a4 <ide_writeback+0x39>
c0031595:	e8 5e fd ff ff       	call   c00312f8 <cache_writeback>
c003159a:	c7 83 a4 1d 01 00 00 	movl   $0x0,0x11da4(%ebx)
c00315a1:	00 00 00 
c00315a4:	90                   	nop
c00315a5:	83 c4 04             	add    $0x4,%esp
c00315a8:	5b                   	pop    %ebx
c00315a9:	5d                   	pop    %ebp
c00315aa:	c3                   	ret    

c00315ab <ide_intr>:
c00315ab:	55                   	push   %ebp
c00315ac:	89 e5                	mov    %esp,%ebp
c00315ae:	e8 80 f4 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00315b3:	05 4d aa 00 00       	add    $0xaa4d,%eax
c00315b8:	c7 80 a0 1d 01 00 01 	movl   $0x1,0x11da0(%eax)
c00315bf:	00 00 00 
c00315c2:	90                   	nop
c00315c3:	5d                   	pop    %ebp
c00315c4:	c3                   	ret    

c00315c5 <clear_ide_intr>:
c00315c5:	55                   	push   %ebp
c00315c6:	89 e5                	mov    %esp,%ebp
c00315c8:	e8 66 f4 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00315cd:	05 33 aa 00 00       	add    $0xaa33,%eax
c00315d2:	c7 80 a0 1d 01 00 00 	movl   $0x0,0x11da0(%eax)
c00315d9:	00 00 00 
c00315dc:	90                   	nop
c00315dd:	5d                   	pop    %ebp
c00315de:	c3                   	ret    

c00315df <wait_ide_intr>:
c00315df:	55                   	push   %ebp
c00315e0:	89 e5                	mov    %esp,%ebp
c00315e2:	53                   	push   %ebx
c00315e3:	e8 4d f3 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c00315e8:	81 c3 18 aa 00 00    	add    $0xaa18,%ebx
c00315ee:	eb 05                	jmp    c00315f5 <wait_ide_intr+0x16>
c00315f0:	e8 c9 fe ff ff       	call   c00314be <wait_intr>
c00315f5:	8b 83 a0 1d 01 00    	mov    0x11da0(%ebx),%eax
c00315fb:	85 c0                	test   %eax,%eax
c00315fd:	74 f1                	je     c00315f0 <wait_ide_intr+0x11>
c00315ff:	e8 c1 ff ff ff       	call   c00315c5 <clear_ide_intr>
c0031604:	90                   	nop
c0031605:	5b                   	pop    %ebx
c0031606:	5d                   	pop    %ebp
c0031607:	c3                   	ret    

c0031608 <init_ide>:
c0031608:	55                   	push   %ebp
c0031609:	89 e5                	mov    %esp,%ebp
c003160b:	53                   	push   %ebx
c003160c:	83 ec 04             	sub    $0x4,%esp
c003160f:	e8 21 f3 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031614:	81 c3 ec a9 00 00    	add    $0xa9ec,%ebx
c003161a:	e8 96 fc ff ff       	call   c00312b5 <cache_init>
c003161f:	83 ec 08             	sub    $0x8,%esp
c0031622:	8d 83 6b 55 ff ff    	lea    -0xaa95(%ebx),%eax
c0031628:	50                   	push   %eax
c0031629:	6a 00                	push   $0x0
c003162b:	e8 07 f4 ff ff       	call   c0030a37 <add_irq_handle>
c0031630:	83 c4 10             	add    $0x10,%esp
c0031633:	83 ec 08             	sub    $0x8,%esp
c0031636:	8d 83 ab 55 ff ff    	lea    -0xaa55(%ebx),%eax
c003163c:	50                   	push   %eax
c003163d:	6a 0e                	push   $0xe
c003163f:	e8 f3 f3 ff ff       	call   c0030a37 <add_irq_handle>
c0031644:	83 c4 10             	add    $0x10,%esp
c0031647:	90                   	nop
c0031648:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003164b:	c9                   	leave  
c003164c:	c3                   	ret    

c003164d <in_byte>:
c003164d:	55                   	push   %ebp
c003164e:	89 e5                	mov    %esp,%ebp
c0031650:	83 ec 14             	sub    $0x14,%esp
c0031653:	e8 db f3 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031658:	05 a8 a9 00 00       	add    $0xa9a8,%eax
c003165d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031660:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031664:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031667:	89 c2                	mov    %eax,%edx
c0031669:	ec                   	in     (%dx),%al
c003166a:	88 45 ff             	mov    %al,-0x1(%ebp)
c003166d:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031670:	c9                   	leave  
c0031671:	c3                   	ret    

c0031672 <in_long>:
c0031672:	55                   	push   %ebp
c0031673:	89 e5                	mov    %esp,%ebp
c0031675:	83 ec 14             	sub    $0x14,%esp
c0031678:	e8 b6 f3 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003167d:	05 83 a9 00 00       	add    $0xa983,%eax
c0031682:	8b 45 08             	mov    0x8(%ebp),%eax
c0031685:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031689:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003168c:	89 c2                	mov    %eax,%edx
c003168e:	ed                   	in     (%dx),%eax
c003168f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031692:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031695:	c9                   	leave  
c0031696:	c3                   	ret    

c0031697 <out_byte>:
c0031697:	55                   	push   %ebp
c0031698:	89 e5                	mov    %esp,%ebp
c003169a:	83 ec 08             	sub    $0x8,%esp
c003169d:	e8 91 f3 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00316a2:	05 5e a9 00 00       	add    $0xa95e,%eax
c00316a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00316aa:	8b 55 0c             	mov    0xc(%ebp),%edx
c00316ad:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00316b1:	88 55 f8             	mov    %dl,-0x8(%ebp)
c00316b4:	8a 45 f8             	mov    -0x8(%ebp),%al
c00316b7:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00316ba:	ee                   	out    %al,(%dx)
c00316bb:	90                   	nop
c00316bc:	c9                   	leave  
c00316bd:	c3                   	ret    

c00316be <out_long>:
c00316be:	55                   	push   %ebp
c00316bf:	89 e5                	mov    %esp,%ebp
c00316c1:	83 ec 04             	sub    $0x4,%esp
c00316c4:	e8 6a f3 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00316c9:	05 37 a9 00 00       	add    $0xa937,%eax
c00316ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00316d1:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00316d5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00316d8:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00316db:	ef                   	out    %eax,(%dx)
c00316dc:	90                   	nop
c00316dd:	c9                   	leave  
c00316de:	c3                   	ret    

c00316df <waitdisk>:
c00316df:	55                   	push   %ebp
c00316e0:	89 e5                	mov    %esp,%ebp
c00316e2:	e8 4c f3 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00316e7:	05 19 a9 00 00       	add    $0xa919,%eax
c00316ec:	90                   	nop
c00316ed:	68 f7 01 00 00       	push   $0x1f7
c00316f2:	e8 56 ff ff ff       	call   c003164d <in_byte>
c00316f7:	83 c4 04             	add    $0x4,%esp
c00316fa:	0f b6 c0             	movzbl %al,%eax
c00316fd:	25 c0 00 00 00       	and    $0xc0,%eax
c0031702:	83 f8 40             	cmp    $0x40,%eax
c0031705:	75 e6                	jne    c00316ed <waitdisk+0xe>
c0031707:	90                   	nop
c0031708:	c9                   	leave  
c0031709:	c3                   	ret    

c003170a <ide_prepare>:
c003170a:	55                   	push   %ebp
c003170b:	89 e5                	mov    %esp,%ebp
c003170d:	e8 21 f3 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031712:	05 ee a8 00 00       	add    $0xa8ee,%eax
c0031717:	e8 c3 ff ff ff       	call   c00316df <waitdisk>
c003171c:	6a 00                	push   $0x0
c003171e:	68 f1 01 00 00       	push   $0x1f1
c0031723:	e8 6f ff ff ff       	call   c0031697 <out_byte>
c0031728:	83 c4 08             	add    $0x8,%esp
c003172b:	6a 01                	push   $0x1
c003172d:	68 f2 01 00 00       	push   $0x1f2
c0031732:	e8 60 ff ff ff       	call   c0031697 <out_byte>
c0031737:	83 c4 08             	add    $0x8,%esp
c003173a:	8b 45 08             	mov    0x8(%ebp),%eax
c003173d:	0f b6 c0             	movzbl %al,%eax
c0031740:	50                   	push   %eax
c0031741:	68 f3 01 00 00       	push   $0x1f3
c0031746:	e8 4c ff ff ff       	call   c0031697 <out_byte>
c003174b:	83 c4 08             	add    $0x8,%esp
c003174e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031751:	c1 e8 08             	shr    $0x8,%eax
c0031754:	0f b6 c0             	movzbl %al,%eax
c0031757:	50                   	push   %eax
c0031758:	68 f4 01 00 00       	push   $0x1f4
c003175d:	e8 35 ff ff ff       	call   c0031697 <out_byte>
c0031762:	83 c4 08             	add    $0x8,%esp
c0031765:	8b 45 08             	mov    0x8(%ebp),%eax
c0031768:	c1 e8 10             	shr    $0x10,%eax
c003176b:	0f b6 c0             	movzbl %al,%eax
c003176e:	50                   	push   %eax
c003176f:	68 f5 01 00 00       	push   $0x1f5
c0031774:	e8 1e ff ff ff       	call   c0031697 <out_byte>
c0031779:	83 c4 08             	add    $0x8,%esp
c003177c:	8b 45 08             	mov    0x8(%ebp),%eax
c003177f:	c1 e8 18             	shr    $0x18,%eax
c0031782:	83 c8 e0             	or     $0xffffffe0,%eax
c0031785:	0f b6 c0             	movzbl %al,%eax
c0031788:	50                   	push   %eax
c0031789:	68 f6 01 00 00       	push   $0x1f6
c003178e:	e8 04 ff ff ff       	call   c0031697 <out_byte>
c0031793:	83 c4 08             	add    $0x8,%esp
c0031796:	90                   	nop
c0031797:	c9                   	leave  
c0031798:	c3                   	ret    

c0031799 <issue_read>:
c0031799:	55                   	push   %ebp
c003179a:	89 e5                	mov    %esp,%ebp
c003179c:	e8 92 f2 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00317a1:	05 5f a8 00 00       	add    $0xa85f,%eax
c00317a6:	6a 20                	push   $0x20
c00317a8:	68 f7 01 00 00       	push   $0x1f7
c00317ad:	e8 e5 fe ff ff       	call   c0031697 <out_byte>
c00317b2:	83 c4 08             	add    $0x8,%esp
c00317b5:	90                   	nop
c00317b6:	c9                   	leave  
c00317b7:	c3                   	ret    

c00317b8 <issue_write>:
c00317b8:	55                   	push   %ebp
c00317b9:	89 e5                	mov    %esp,%ebp
c00317bb:	e8 73 f2 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00317c0:	05 40 a8 00 00       	add    $0xa840,%eax
c00317c5:	6a 30                	push   $0x30
c00317c7:	68 f7 01 00 00       	push   $0x1f7
c00317cc:	e8 c6 fe ff ff       	call   c0031697 <out_byte>
c00317d1:	83 c4 08             	add    $0x8,%esp
c00317d4:	90                   	nop
c00317d5:	c9                   	leave  
c00317d6:	c3                   	ret    

c00317d7 <disk_do_read>:
c00317d7:	55                   	push   %ebp
c00317d8:	89 e5                	mov    %esp,%ebp
c00317da:	53                   	push   %ebx
c00317db:	83 ec 14             	sub    $0x14,%esp
c00317de:	e8 52 f1 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c00317e3:	81 c3 1d a8 00 00    	add    $0xa81d,%ebx
c00317e9:	e8 d7 fd ff ff       	call   c00315c5 <clear_ide_intr>
c00317ee:	83 ec 0c             	sub    $0xc,%esp
c00317f1:	ff 75 0c             	pushl  0xc(%ebp)
c00317f4:	e8 11 ff ff ff       	call   c003170a <ide_prepare>
c00317f9:	83 c4 10             	add    $0x10,%esp
c00317fc:	e8 98 ff ff ff       	call   c0031799 <issue_read>
c0031801:	e8 d9 fd ff ff       	call   c00315df <wait_ide_intr>
c0031806:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003180d:	eb 25                	jmp    c0031834 <disk_do_read+0x5d>
c003180f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031812:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031819:	8b 45 08             	mov    0x8(%ebp),%eax
c003181c:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c003181f:	83 ec 0c             	sub    $0xc,%esp
c0031822:	68 f0 01 00 00       	push   $0x1f0
c0031827:	e8 46 fe ff ff       	call   c0031672 <in_long>
c003182c:	83 c4 10             	add    $0x10,%esp
c003182f:	89 03                	mov    %eax,(%ebx)
c0031831:	ff 45 f4             	incl   -0xc(%ebp)
c0031834:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031837:	83 f8 7f             	cmp    $0x7f,%eax
c003183a:	76 d3                	jbe    c003180f <disk_do_read+0x38>
c003183c:	90                   	nop
c003183d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031840:	c9                   	leave  
c0031841:	c3                   	ret    

c0031842 <disk_do_write>:
c0031842:	55                   	push   %ebp
c0031843:	89 e5                	mov    %esp,%ebp
c0031845:	83 ec 10             	sub    $0x10,%esp
c0031848:	e8 e6 f1 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003184d:	05 b3 a7 00 00       	add    $0xa7b3,%eax
c0031852:	ff 75 0c             	pushl  0xc(%ebp)
c0031855:	e8 b0 fe ff ff       	call   c003170a <ide_prepare>
c003185a:	83 c4 04             	add    $0x4,%esp
c003185d:	e8 56 ff ff ff       	call   c00317b8 <issue_write>
c0031862:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031869:	eb 22                	jmp    c003188d <disk_do_write+0x4b>
c003186b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003186e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031875:	8b 45 08             	mov    0x8(%ebp),%eax
c0031878:	01 d0                	add    %edx,%eax
c003187a:	8b 00                	mov    (%eax),%eax
c003187c:	50                   	push   %eax
c003187d:	68 f0 01 00 00       	push   $0x1f0
c0031882:	e8 37 fe ff ff       	call   c00316be <out_long>
c0031887:	83 c4 08             	add    $0x8,%esp
c003188a:	ff 45 fc             	incl   -0x4(%ebp)
c003188d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031890:	83 f8 7f             	cmp    $0x7f,%eax
c0031893:	76 d6                	jbe    c003186b <disk_do_write+0x29>
c0031895:	90                   	nop
c0031896:	c9                   	leave  
c0031897:	c3                   	ret    

c0031898 <sti>:
c0031898:	55                   	push   %ebp
c0031899:	89 e5                	mov    %esp,%ebp
c003189b:	e8 93 f1 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00318a0:	05 60 a7 00 00       	add    $0xa760,%eax
c00318a5:	fb                   	sti    
c00318a6:	90                   	nop
c00318a7:	5d                   	pop    %ebp
c00318a8:	c3                   	ret    

c00318a9 <init>:
c00318a9:	55                   	push   %ebp
c00318aa:	89 e5                	mov    %esp,%ebp
c00318ac:	53                   	push   %ebx
c00318ad:	83 ec 04             	sub    $0x4,%esp
c00318b0:	e8 80 f0 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c00318b5:	81 c3 4b a7 00 00    	add    $0xa74b,%ebx
c00318bb:	e8 64 03 00 00       	call   c0031c24 <init_page>
c00318c0:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c00318c6:	8d 83 db 58 ff bf    	lea    -0x4000a725(%ebx),%eax
c00318cc:	ff e0                	jmp    *%eax
c00318ce:	b8 01 00 00 00       	mov    $0x1,%eax
c00318d3:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c00318da:	c3                   	ret    

c00318db <init_cond>:
c00318db:	55                   	push   %ebp
c00318dc:	89 e5                	mov    %esp,%ebp
c00318de:	53                   	push   %ebx
c00318df:	83 ec 14             	sub    $0x14,%esp
c00318e2:	e8 4e f0 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c00318e7:	81 c3 19 a7 00 00    	add    $0xa719,%ebx
c00318ed:	e8 11 05 00 00       	call   c0031e03 <init_segment>
c00318f2:	e8 66 f4 ff ff       	call   c0030d5d <init_idt>
c00318f7:	e8 9c ff ff ff       	call   c0031898 <sti>
c00318fc:	e8 07 fd ff ff       	call   c0031608 <init_ide>
c0031901:	e8 0e 02 00 00       	call   c0031b14 <init_mm>
c0031906:	8d 83 70 d2 ff ff    	lea    -0x2d90(%ebx),%eax
c003190c:	50                   	push   %eax
c003190d:	6a 4c                	push   $0x4c
c003190f:	8d 83 30 d2 ff ff    	lea    -0x2dd0(%ebx),%eax
c0031915:	50                   	push   %eax
c0031916:	8d 83 3c d2 ff ff    	lea    -0x2dc4(%ebx),%eax
c003191c:	50                   	push   %eax
c003191d:	e8 24 01 00 00       	call   c0031a46 <printk>
c0031922:	83 c4 10             	add    $0x10,%esp
c0031925:	e8 c9 f6 ff ff       	call   c0030ff3 <loader>
c003192a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003192d:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031932:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031935:	ff d0                	call   *%eax
c0031937:	90                   	nop
c0031938:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003193b:	c9                   	leave  
c003193c:	c3                   	ret    

c003193d <in_byte>:
c003193d:	55                   	push   %ebp
c003193e:	89 e5                	mov    %esp,%ebp
c0031940:	83 ec 14             	sub    $0x14,%esp
c0031943:	e8 eb f0 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031948:	05 b8 a6 00 00       	add    $0xa6b8,%eax
c003194d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031950:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031954:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031957:	89 c2                	mov    %eax,%edx
c0031959:	ec                   	in     (%dx),%al
c003195a:	88 45 ff             	mov    %al,-0x1(%ebp)
c003195d:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031960:	c9                   	leave  
c0031961:	c3                   	ret    

c0031962 <out_byte>:
c0031962:	55                   	push   %ebp
c0031963:	89 e5                	mov    %esp,%ebp
c0031965:	83 ec 08             	sub    $0x8,%esp
c0031968:	e8 c6 f0 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003196d:	05 93 a6 00 00       	add    $0xa693,%eax
c0031972:	8b 45 08             	mov    0x8(%ebp),%eax
c0031975:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031978:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003197c:	88 55 f8             	mov    %dl,-0x8(%ebp)
c003197f:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031982:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031985:	ee                   	out    %al,(%dx)
c0031986:	90                   	nop
c0031987:	c9                   	leave  
c0031988:	c3                   	ret    

c0031989 <init_serial>:
c0031989:	55                   	push   %ebp
c003198a:	89 e5                	mov    %esp,%ebp
c003198c:	e8 a2 f0 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031991:	05 6f a6 00 00       	add    $0xa66f,%eax
c0031996:	90                   	nop
c0031997:	5d                   	pop    %ebp
c0031998:	c3                   	ret    

c0031999 <serial_idle>:
c0031999:	55                   	push   %ebp
c003199a:	89 e5                	mov    %esp,%ebp
c003199c:	e8 92 f0 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00319a1:	05 5f a6 00 00       	add    $0xa65f,%eax
c00319a6:	68 fd 03 00 00       	push   $0x3fd
c00319ab:	e8 8d ff ff ff       	call   c003193d <in_byte>
c00319b0:	83 c4 04             	add    $0x4,%esp
c00319b3:	0f b6 c0             	movzbl %al,%eax
c00319b6:	83 e0 20             	and    $0x20,%eax
c00319b9:	85 c0                	test   %eax,%eax
c00319bb:	0f 95 c0             	setne  %al
c00319be:	0f b6 c0             	movzbl %al,%eax
c00319c1:	c9                   	leave  
c00319c2:	c3                   	ret    

c00319c3 <serial_printc>:
c00319c3:	55                   	push   %ebp
c00319c4:	89 e5                	mov    %esp,%ebp
c00319c6:	83 ec 04             	sub    $0x4,%esp
c00319c9:	e8 65 f0 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00319ce:	05 32 a6 00 00       	add    $0xa632,%eax
c00319d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00319d6:	88 45 fc             	mov    %al,-0x4(%ebp)
c00319d9:	90                   	nop
c00319da:	e8 ba ff ff ff       	call   c0031999 <serial_idle>
c00319df:	85 c0                	test   %eax,%eax
c00319e1:	74 f7                	je     c00319da <serial_printc+0x17>
c00319e3:	8a 45 fc             	mov    -0x4(%ebp),%al
c00319e6:	0f b6 c0             	movzbl %al,%eax
c00319e9:	50                   	push   %eax
c00319ea:	68 f8 03 00 00       	push   $0x3f8
c00319ef:	e8 6e ff ff ff       	call   c0031962 <out_byte>
c00319f4:	83 c4 08             	add    $0x8,%esp
c00319f7:	90                   	nop
c00319f8:	c9                   	leave  
c00319f9:	c3                   	ret    

c00319fa <sbrk>:
c00319fa:	55                   	push   %ebp
c00319fb:	89 e5                	mov    %esp,%ebp
c00319fd:	53                   	push   %ebx
c00319fe:	83 ec 04             	sub    $0x4,%esp
c0031a01:	e8 2d f0 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031a06:	05 fa a5 00 00       	add    $0xa5fa,%eax
c0031a0b:	83 ec 0c             	sub    $0xc,%esp
c0031a0e:	8d 90 7c d2 ff ff    	lea    -0x2d84(%eax),%edx
c0031a14:	52                   	push   %edx
c0031a15:	8d 90 dc d2 ff ff    	lea    -0x2d24(%eax),%edx
c0031a1b:	52                   	push   %edx
c0031a1c:	6a 08                	push   $0x8
c0031a1e:	8d 90 7e d2 ff ff    	lea    -0x2d82(%eax),%edx
c0031a24:	52                   	push   %edx
c0031a25:	8d 90 90 d2 ff ff    	lea    -0x2d70(%eax),%edx
c0031a2b:	52                   	push   %edx
c0031a2c:	89 c3                	mov    %eax,%ebx
c0031a2e:	e8 13 00 00 00       	call   c0031a46 <printk>
c0031a33:	83 c4 20             	add    $0x20,%esp
c0031a36:	b8 01 00 00 00       	mov    $0x1,%eax
c0031a3b:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c0031a42:	5d                   	pop    %ebp
c0031a43:	fc                   	cld    
c0031a44:	c9                   	leave  
c0031a45:	c3                   	ret    

c0031a46 <printk>:
c0031a46:	55                   	push   %ebp
c0031a47:	89 e5                	mov    %esp,%ebp
c0031a49:	53                   	push   %ebx
c0031a4a:	83 ec 14             	sub    $0x14,%esp
c0031a4d:	e8 e3 ee ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031a52:	81 c3 ae a5 00 00    	add    $0xa5ae,%ebx
c0031a58:	8d 45 0c             	lea    0xc(%ebp),%eax
c0031a5b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031a5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a61:	ff 75 f4             	pushl  -0xc(%ebp)
c0031a64:	50                   	push   %eax
c0031a65:	68 00 01 00 00       	push   $0x100
c0031a6a:	8d 83 c0 1d 01 00    	lea    0x11dc0(%ebx),%eax
c0031a70:	50                   	push   %eax
c0031a71:	e8 5a 0c 00 00       	call   c00326d0 <vsnprintf>
c0031a76:	83 c4 10             	add    $0x10,%esp
c0031a79:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031a7c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031a7f:	83 ec 04             	sub    $0x4,%esp
c0031a82:	50                   	push   %eax
c0031a83:	8d 83 c0 1d 01 00    	lea    0x11dc0(%ebx),%eax
c0031a89:	50                   	push   %eax
c0031a8a:	6a 01                	push   $0x1
c0031a8c:	e8 dd e9 ff ff       	call   c003046e <fs_write>
c0031a91:	83 c4 10             	add    $0x10,%esp
c0031a94:	90                   	nop
c0031a95:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a98:	c9                   	leave  
c0031a99:	c3                   	ret    

c0031a9a <get_updir>:
c0031a9a:	55                   	push   %ebp
c0031a9b:	89 e5                	mov    %esp,%ebp
c0031a9d:	e8 91 ef ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031aa2:	05 5e a5 00 00       	add    $0xa55e,%eax
c0031aa7:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031aad:	5d                   	pop    %ebp
c0031aae:	c3                   	ret    

c0031aaf <get_ucr3>:
c0031aaf:	55                   	push   %ebp
c0031ab0:	89 e5                	mov    %esp,%ebp
c0031ab2:	e8 7c ef ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031ab7:	05 49 a5 00 00       	add    $0xa549,%eax
c0031abc:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031ac2:	8b 00                	mov    (%eax),%eax
c0031ac4:	5d                   	pop    %ebp
c0031ac5:	c3                   	ret    

c0031ac6 <mm_brk>:
c0031ac6:	55                   	push   %ebp
c0031ac7:	89 e5                	mov    %esp,%ebp
c0031ac9:	53                   	push   %ebx
c0031aca:	83 ec 04             	sub    $0x4,%esp
c0031acd:	e8 63 ee ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031ad2:	81 c3 2e a5 00 00    	add    $0xa52e,%ebx
c0031ad8:	8b 83 c0 1e 01 00    	mov    0x11ec0(%ebx),%eax
c0031ade:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031ae1:	76 22                	jbe    c0031b05 <mm_brk+0x3f>
c0031ae3:	8b 83 c0 1e 01 00    	mov    0x11ec0(%ebx),%eax
c0031ae9:	8b 55 08             	mov    0x8(%ebp),%edx
c0031aec:	29 c2                	sub    %eax,%edx
c0031aee:	89 d0                	mov    %edx,%eax
c0031af0:	89 c2                	mov    %eax,%edx
c0031af2:	8b 83 c0 1e 01 00    	mov    0x11ec0(%ebx),%eax
c0031af8:	83 ec 08             	sub    $0x8,%esp
c0031afb:	52                   	push   %edx
c0031afc:	50                   	push   %eax
c0031afd:	e8 5e 07 00 00       	call   c0032260 <mm_malloc>
c0031b02:	83 c4 10             	add    $0x10,%esp
c0031b05:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b08:	89 83 c0 1e 01 00    	mov    %eax,0x11ec0(%ebx)
c0031b0e:	90                   	nop
c0031b0f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b12:	c9                   	leave  
c0031b13:	c3                   	ret    

c0031b14 <init_mm>:
c0031b14:	55                   	push   %ebp
c0031b15:	89 e5                	mov    %esp,%ebp
c0031b17:	53                   	push   %ebx
c0031b18:	83 ec 14             	sub    $0x14,%esp
c0031b1b:	e8 15 ee ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031b20:	81 c3 e0 a4 00 00    	add    $0xa4e0,%ebx
c0031b26:	e8 e4 00 00 00       	call   c0031c0f <get_kpdir>
c0031b2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031b2e:	83 ec 04             	sub    $0x4,%esp
c0031b31:	68 00 10 00 00       	push   $0x1000
c0031b36:	6a 00                	push   $0x0
c0031b38:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031b3e:	50                   	push   %eax
c0031b3f:	e8 f8 09 00 00       	call   c003253c <memset>
c0031b44:	83 c4 10             	add    $0x10,%esp
c0031b47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031b4a:	05 00 0c 00 00       	add    $0xc00,%eax
c0031b4f:	83 ec 04             	sub    $0x4,%esp
c0031b52:	68 80 00 00 00       	push   $0x80
c0031b57:	50                   	push   %eax
c0031b58:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031b5e:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031b64:	50                   	push   %eax
c0031b65:	e8 8a 09 00 00       	call   c00324f4 <memcpy>
c0031b6a:	83 c4 10             	add    $0x10,%esp
c0031b6d:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031b73:	05 00 00 00 40       	add    $0x40000000,%eax
c0031b78:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031b7d:	89 c2                	mov    %eax,%edx
c0031b7f:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031b85:	89 10                	mov    %edx,(%eax)
c0031b87:	90                   	nop
c0031b88:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b8b:	c9                   	leave  
c0031b8c:	c3                   	ret    

c0031b8d <read_cr0>:
c0031b8d:	55                   	push   %ebp
c0031b8e:	89 e5                	mov    %esp,%ebp
c0031b90:	83 ec 10             	sub    $0x10,%esp
c0031b93:	e8 9b ee ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031b98:	05 68 a4 00 00       	add    $0xa468,%eax
c0031b9d:	0f 20 c0             	mov    %cr0,%eax
c0031ba0:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031ba3:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031ba6:	c9                   	leave  
c0031ba7:	c3                   	ret    

c0031ba8 <write_cr0>:
c0031ba8:	55                   	push   %ebp
c0031ba9:	89 e5                	mov    %esp,%ebp
c0031bab:	e8 83 ee ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031bb0:	05 50 a4 00 00       	add    $0xa450,%eax
c0031bb5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bb8:	0f 22 c0             	mov    %eax,%cr0
c0031bbb:	90                   	nop
c0031bbc:	5d                   	pop    %ebp
c0031bbd:	c3                   	ret    

c0031bbe <write_cr3>:
c0031bbe:	55                   	push   %ebp
c0031bbf:	89 e5                	mov    %esp,%ebp
c0031bc1:	e8 6d ee ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031bc6:	05 3a a4 00 00       	add    $0xa43a,%eax
c0031bcb:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bce:	0f 22 d8             	mov    %eax,%cr3
c0031bd1:	90                   	nop
c0031bd2:	5d                   	pop    %ebp
c0031bd3:	c3                   	ret    

c0031bd4 <write_gdtr>:
c0031bd4:	55                   	push   %ebp
c0031bd5:	89 e5                	mov    %esp,%ebp
c0031bd7:	e8 57 ee ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031bdc:	05 24 a4 00 00       	add    $0xa424,%eax
c0031be1:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031be4:	4a                   	dec    %edx
c0031be5:	66 89 90 c4 1e 01 00 	mov    %dx,0x11ec4(%eax)
c0031bec:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bef:	66 89 90 c6 1e 01 00 	mov    %dx,0x11ec6(%eax)
c0031bf6:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bf9:	c1 ea 10             	shr    $0x10,%edx
c0031bfc:	66 89 90 c8 1e 01 00 	mov    %dx,0x11ec8(%eax)
c0031c03:	8d 80 c4 1e 01 00    	lea    0x11ec4(%eax),%eax
c0031c09:	0f 01 10             	lgdtl  (%eax)
c0031c0c:	90                   	nop
c0031c0d:	5d                   	pop    %ebp
c0031c0e:	c3                   	ret    

c0031c0f <get_kpdir>:
c0031c0f:	55                   	push   %ebp
c0031c10:	89 e5                	mov    %esp,%ebp
c0031c12:	e8 1c ee ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031c17:	05 e9 a3 00 00       	add    $0xa3e9,%eax
c0031c1c:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031c22:	5d                   	pop    %ebp
c0031c23:	c3                   	ret    

c0031c24 <init_page>:
c0031c24:	55                   	push   %ebp
c0031c25:	89 e5                	mov    %esp,%ebp
c0031c27:	53                   	push   %ebx
c0031c28:	83 ec 24             	sub    $0x24,%esp
c0031c2b:	e8 03 ee ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031c30:	05 d0 a3 00 00       	add    $0xa3d0,%eax
c0031c35:	c7 c2 00 30 07 c0    	mov    $0xc0073000,%edx
c0031c3b:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031c41:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0031c44:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c0031c4a:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031c50:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031c53:	83 ec 04             	sub    $0x4,%esp
c0031c56:	68 00 10 00 00       	push   $0x1000
c0031c5b:	6a 00                	push   $0x0
c0031c5d:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031c60:	89 c3                	mov    %eax,%ebx
c0031c62:	e8 d5 08 00 00       	call   c003253c <memset>
c0031c67:	83 c4 10             	add    $0x10,%esp
c0031c6a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031c71:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031c78:	eb 6e                	jmp    c0031ce8 <init_page+0xc4>
c0031c7a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031c7d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031c84:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031c87:	01 d0                	add    %edx,%eax
c0031c89:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031c8c:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031c92:	83 ca 07             	or     $0x7,%edx
c0031c95:	89 10                	mov    %edx,(%eax)
c0031c97:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031c9a:	05 00 03 00 00       	add    $0x300,%eax
c0031c9f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031ca6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031ca9:	01 d0                	add    %edx,%eax
c0031cab:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031cae:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031cb4:	83 ca 07             	or     $0x7,%edx
c0031cb7:	89 10                	mov    %edx,(%eax)
c0031cb9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031cc0:	eb 1a                	jmp    c0031cdc <init_page+0xb8>
c0031cc2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031cc5:	c1 e0 0c             	shl    $0xc,%eax
c0031cc8:	83 c8 07             	or     $0x7,%eax
c0031ccb:	89 c2                	mov    %eax,%edx
c0031ccd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031cd0:	89 10                	mov    %edx,(%eax)
c0031cd2:	ff 45 e8             	incl   -0x18(%ebp)
c0031cd5:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031cd9:	ff 45 ec             	incl   -0x14(%ebp)
c0031cdc:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031ce3:	76 dd                	jbe    c0031cc2 <init_page+0x9e>
c0031ce5:	ff 45 f0             	incl   -0x10(%ebp)
c0031ce8:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0031cec:	76 8c                	jbe    c0031c7a <init_page+0x56>
c0031cee:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0031cf5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031cf8:	c1 e8 0c             	shr    $0xc,%eax
c0031cfb:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0031d00:	c1 e0 0c             	shl    $0xc,%eax
c0031d03:	89 c2                	mov    %eax,%edx
c0031d05:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031d08:	25 ff 0f 00 00       	and    $0xfff,%eax
c0031d0d:	09 d0                	or     %edx,%eax
c0031d0f:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031d12:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031d15:	83 ec 0c             	sub    $0xc,%esp
c0031d18:	50                   	push   %eax
c0031d19:	e8 a0 fe ff ff       	call   c0031bbe <write_cr3>
c0031d1e:	83 c4 10             	add    $0x10,%esp
c0031d21:	e8 67 fe ff ff       	call   c0031b8d <read_cr0>
c0031d26:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031d29:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031d2c:	83 c8 80             	or     $0xffffff80,%eax
c0031d2f:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031d32:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031d35:	83 ec 0c             	sub    $0xc,%esp
c0031d38:	50                   	push   %eax
c0031d39:	e8 6a fe ff ff       	call   c0031ba8 <write_cr0>
c0031d3e:	83 c4 10             	add    $0x10,%esp
c0031d41:	90                   	nop
c0031d42:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031d45:	c9                   	leave  
c0031d46:	c3                   	ret    

c0031d47 <set_segment>:
c0031d47:	55                   	push   %ebp
c0031d48:	89 e5                	mov    %esp,%ebp
c0031d4a:	e8 e4 ec ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031d4f:	05 b1 a2 00 00       	add    $0xa2b1,%eax
c0031d54:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d57:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031d5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d5f:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031d65:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d68:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031d6c:	8b 45 10             	mov    0x10(%ebp),%eax
c0031d6f:	83 e0 0f             	and    $0xf,%eax
c0031d72:	88 c2                	mov    %al,%dl
c0031d74:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d77:	88 d1                	mov    %dl,%cl
c0031d79:	83 e1 0f             	and    $0xf,%ecx
c0031d7c:	8a 50 05             	mov    0x5(%eax),%dl
c0031d7f:	83 e2 f0             	and    $0xfffffff0,%edx
c0031d82:	09 ca                	or     %ecx,%edx
c0031d84:	88 50 05             	mov    %dl,0x5(%eax)
c0031d87:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d8a:	8a 50 05             	mov    0x5(%eax),%dl
c0031d8d:	83 ca 10             	or     $0x10,%edx
c0031d90:	88 50 05             	mov    %dl,0x5(%eax)
c0031d93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031d96:	83 e0 03             	and    $0x3,%eax
c0031d99:	88 c2                	mov    %al,%dl
c0031d9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d9e:	83 e2 03             	and    $0x3,%edx
c0031da1:	88 d1                	mov    %dl,%cl
c0031da3:	c1 e1 05             	shl    $0x5,%ecx
c0031da6:	8a 50 05             	mov    0x5(%eax),%dl
c0031da9:	83 e2 9f             	and    $0xffffff9f,%edx
c0031dac:	09 ca                	or     %ecx,%edx
c0031dae:	88 50 05             	mov    %dl,0x5(%eax)
c0031db1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031db4:	8a 50 05             	mov    0x5(%eax),%dl
c0031db7:	83 ca 80             	or     $0xffffff80,%edx
c0031dba:	88 50 05             	mov    %dl,0x5(%eax)
c0031dbd:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dc0:	8a 50 06             	mov    0x6(%eax),%dl
c0031dc3:	83 ca 0f             	or     $0xf,%edx
c0031dc6:	88 50 06             	mov    %dl,0x6(%eax)
c0031dc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dcc:	8a 50 06             	mov    0x6(%eax),%dl
c0031dcf:	83 e2 ef             	and    $0xffffffef,%edx
c0031dd2:	88 50 06             	mov    %dl,0x6(%eax)
c0031dd5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dd8:	8a 50 06             	mov    0x6(%eax),%dl
c0031ddb:	83 e2 df             	and    $0xffffffdf,%edx
c0031dde:	88 50 06             	mov    %dl,0x6(%eax)
c0031de1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031de4:	8a 50 06             	mov    0x6(%eax),%dl
c0031de7:	83 ca 40             	or     $0x40,%edx
c0031dea:	88 50 06             	mov    %dl,0x6(%eax)
c0031ded:	8b 45 08             	mov    0x8(%ebp),%eax
c0031df0:	8a 50 06             	mov    0x6(%eax),%dl
c0031df3:	83 ca 80             	or     $0xffffff80,%edx
c0031df6:	88 50 06             	mov    %dl,0x6(%eax)
c0031df9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dfc:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031e00:	90                   	nop
c0031e01:	5d                   	pop    %ebp
c0031e02:	c3                   	ret    

c0031e03 <init_segment>:
c0031e03:	55                   	push   %ebp
c0031e04:	89 e5                	mov    %esp,%ebp
c0031e06:	53                   	push   %ebx
c0031e07:	83 ec 04             	sub    $0x4,%esp
c0031e0a:	e8 26 eb ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031e0f:	81 c3 f1 a1 00 00    	add    $0xa1f1,%ebx
c0031e15:	83 ec 04             	sub    $0x4,%esp
c0031e18:	6a 18                	push   $0x18
c0031e1a:	6a 00                	push   $0x0
c0031e1c:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031e22:	50                   	push   %eax
c0031e23:	e8 14 07 00 00       	call   c003253c <memset>
c0031e28:	83 c4 10             	add    $0x10,%esp
c0031e2b:	83 ec 04             	sub    $0x4,%esp
c0031e2e:	6a 0a                	push   $0xa
c0031e30:	6a 00                	push   $0x0
c0031e32:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031e38:	8d 40 08             	lea    0x8(%eax),%eax
c0031e3b:	50                   	push   %eax
c0031e3c:	e8 06 ff ff ff       	call   c0031d47 <set_segment>
c0031e41:	83 c4 10             	add    $0x10,%esp
c0031e44:	83 ec 04             	sub    $0x4,%esp
c0031e47:	6a 02                	push   $0x2
c0031e49:	6a 00                	push   $0x0
c0031e4b:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031e51:	8d 40 10             	lea    0x10(%eax),%eax
c0031e54:	50                   	push   %eax
c0031e55:	e8 ed fe ff ff       	call   c0031d47 <set_segment>
c0031e5a:	83 c4 10             	add    $0x10,%esp
c0031e5d:	83 ec 08             	sub    $0x8,%esp
c0031e60:	6a 18                	push   $0x18
c0031e62:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031e68:	50                   	push   %eax
c0031e69:	e8 66 fd ff ff       	call   c0031bd4 <write_gdtr>
c0031e6e:	83 c4 10             	add    $0x10,%esp
c0031e71:	90                   	nop
c0031e72:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031e75:	c9                   	leave  
c0031e76:	c3                   	ret    

c0031e77 <create_video_mapping>:
c0031e77:	55                   	push   %ebp
c0031e78:	89 e5                	mov    %esp,%ebp
c0031e7a:	53                   	push   %ebx
c0031e7b:	83 ec 14             	sub    $0x14,%esp
c0031e7e:	e8 b0 eb ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031e83:	05 7d a1 00 00       	add    $0xa17d,%eax
c0031e88:	89 c3                	mov    %eax,%ebx
c0031e8a:	e8 0b fc ff ff       	call   c0031a9a <get_updir>
c0031e8f:	05 00 00 00 40       	add    $0x40000000,%eax
c0031e94:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0031e97:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031e9a:	c7 00 07 00 00 00    	movl   $0x7,(%eax)
c0031ea0:	c7 45 f4 a0 00 00 00 	movl   $0xa0,-0xc(%ebp)
c0031ea7:	c7 45 e8 b0 00 00 00 	movl   $0xb0,-0x18(%ebp)
c0031eae:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031eb1:	8b 00                	mov    (%eax),%eax
c0031eb3:	c1 e8 0c             	shr    $0xc,%eax
c0031eb6:	c1 e0 0c             	shl    $0xc,%eax
c0031eb9:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031ebc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031ebf:	c1 e0 02             	shl    $0x2,%eax
c0031ec2:	01 45 f0             	add    %eax,-0x10(%ebp)
c0031ec5:	eb 17                	jmp    c0031ede <create_video_mapping+0x67>
c0031ec7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031eca:	c1 e0 0c             	shl    $0xc,%eax
c0031ecd:	83 c8 07             	or     $0x7,%eax
c0031ed0:	89 c2                	mov    %eax,%edx
c0031ed2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031ed5:	89 10                	mov    %edx,(%eax)
c0031ed7:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
c0031edb:	ff 45 f4             	incl   -0xc(%ebp)
c0031ede:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031ee1:	3b 45 e8             	cmp    -0x18(%ebp),%eax
c0031ee4:	72 e1                	jb     c0031ec7 <create_video_mapping+0x50>
c0031ee6:	90                   	nop
c0031ee7:	83 c4 14             	add    $0x14,%esp
c0031eea:	5b                   	pop    %ebx
c0031eeb:	5d                   	pop    %ebp
c0031eec:	c3                   	ret    

c0031eed <video_mapping_write_test>:
c0031eed:	55                   	push   %ebp
c0031eee:	89 e5                	mov    %esp,%ebp
c0031ef0:	83 ec 10             	sub    $0x10,%esp
c0031ef3:	e8 3b eb ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031ef8:	05 08 a1 00 00       	add    $0xa108,%eax
c0031efd:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031f04:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031f0b:	eb 17                	jmp    c0031f24 <video_mapping_write_test+0x37>
c0031f0d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031f10:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031f17:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031f1a:	01 c2                	add    %eax,%edx
c0031f1c:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031f1f:	89 02                	mov    %eax,(%edx)
c0031f21:	ff 45 fc             	incl   -0x4(%ebp)
c0031f24:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0031f2b:	7e e0                	jle    c0031f0d <video_mapping_write_test+0x20>
c0031f2d:	90                   	nop
c0031f2e:	c9                   	leave  
c0031f2f:	c3                   	ret    

c0031f30 <video_mapping_read_test>:
c0031f30:	55                   	push   %ebp
c0031f31:	89 e5                	mov    %esp,%ebp
c0031f33:	53                   	push   %ebx
c0031f34:	83 ec 14             	sub    $0x14,%esp
c0031f37:	e8 f9 e9 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0031f3c:	81 c3 c4 a0 00 00    	add    $0xa0c4,%ebx
c0031f42:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031f49:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031f50:	eb 4a                	jmp    c0031f9c <video_mapping_read_test+0x6c>
c0031f52:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f55:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031f5c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031f5f:	01 d0                	add    %edx,%eax
c0031f61:	8b 10                	mov    (%eax),%edx
c0031f63:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f66:	39 c2                	cmp    %eax,%edx
c0031f68:	74 2f                	je     c0031f99 <video_mapping_read_test+0x69>
c0031f6a:	83 ec 0c             	sub    $0xc,%esp
c0031f6d:	8d 83 e4 d2 ff ff    	lea    -0x2d1c(%ebx),%eax
c0031f73:	50                   	push   %eax
c0031f74:	8d 83 50 d3 ff ff    	lea    -0x2cb0(%ebx),%eax
c0031f7a:	50                   	push   %eax
c0031f7b:	6a 34                	push   $0x34
c0031f7d:	8d 83 f0 d2 ff ff    	lea    -0x2d10(%ebx),%eax
c0031f83:	50                   	push   %eax
c0031f84:	8d 83 04 d3 ff ff    	lea    -0x2cfc(%ebx),%eax
c0031f8a:	50                   	push   %eax
c0031f8b:	e8 b6 fa ff ff       	call   c0031a46 <printk>
c0031f90:	83 c4 20             	add    $0x20,%esp
c0031f93:	b8 01 00 00 00       	mov    $0x1,%eax
c0031f98:	82 ff 45             	cmp    $0x45,%bh
c0031f9b:	f4                   	hlt    
c0031f9c:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031fa3:	7e ad                	jle    c0031f52 <video_mapping_read_test+0x22>
c0031fa5:	90                   	nop
c0031fa6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031fa9:	c9                   	leave  
c0031faa:	c3                   	ret    

c0031fab <video_mapping_clear>:
c0031fab:	55                   	push   %ebp
c0031fac:	89 e5                	mov    %esp,%ebp
c0031fae:	53                   	push   %ebx
c0031faf:	83 ec 04             	sub    $0x4,%esp
c0031fb2:	e8 7c ea ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031fb7:	05 49 a0 00 00       	add    $0xa049,%eax
c0031fbc:	83 ec 04             	sub    $0x4,%esp
c0031fbf:	68 00 fa 00 00       	push   $0xfa00
c0031fc4:	6a 00                	push   $0x0
c0031fc6:	68 00 00 0a 00       	push   $0xa0000
c0031fcb:	89 c3                	mov    %eax,%ebx
c0031fcd:	e8 6a 05 00 00       	call   c003253c <memset>
c0031fd2:	83 c4 10             	add    $0x10,%esp
c0031fd5:	90                   	nop
c0031fd6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031fd9:	c9                   	leave  
c0031fda:	c3                   	ret    

c0031fdb <sti>:
c0031fdb:	55                   	push   %ebp
c0031fdc:	89 e5                	mov    %esp,%ebp
c0031fde:	e8 50 ea ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031fe3:	05 1d a0 00 00       	add    $0xa01d,%eax
c0031fe8:	fb                   	sti    
c0031fe9:	90                   	nop
c0031fea:	5d                   	pop    %ebp
c0031feb:	c3                   	ret    

c0031fec <cli>:
c0031fec:	55                   	push   %ebp
c0031fed:	89 e5                	mov    %esp,%ebp
c0031fef:	e8 3f ea ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0031ff4:	05 0c a0 00 00       	add    $0xa00c,%eax
c0031ff9:	fa                   	cli    
c0031ffa:	90                   	nop
c0031ffb:	5d                   	pop    %ebp
c0031ffc:	c3                   	ret    

c0031ffd <sys_brk>:
c0031ffd:	55                   	push   %ebp
c0031ffe:	89 e5                	mov    %esp,%ebp
c0032000:	53                   	push   %ebx
c0032001:	83 ec 04             	sub    $0x4,%esp
c0032004:	e8 2a ea ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0032009:	05 f7 9f 00 00       	add    $0x9ff7,%eax
c003200e:	8b 55 08             	mov    0x8(%ebp),%edx
c0032011:	8b 52 10             	mov    0x10(%edx),%edx
c0032014:	83 ec 0c             	sub    $0xc,%esp
c0032017:	52                   	push   %edx
c0032018:	89 c3                	mov    %eax,%ebx
c003201a:	e8 a7 fa ff ff       	call   c0031ac6 <mm_brk>
c003201f:	83 c4 10             	add    $0x10,%esp
c0032022:	8b 45 08             	mov    0x8(%ebp),%eax
c0032025:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c003202c:	90                   	nop
c003202d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0032030:	c9                   	leave  
c0032031:	c3                   	ret    

c0032032 <sys_open>:
c0032032:	55                   	push   %ebp
c0032033:	89 e5                	mov    %esp,%ebp
c0032035:	53                   	push   %ebx
c0032036:	83 ec 04             	sub    $0x4,%esp
c0032039:	e8 f5 e9 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003203e:	05 c2 9f 00 00       	add    $0x9fc2,%eax
c0032043:	8b 55 08             	mov    0x8(%ebp),%edx
c0032046:	8b 52 18             	mov    0x18(%edx),%edx
c0032049:	89 d1                	mov    %edx,%ecx
c003204b:	8b 55 08             	mov    0x8(%ebp),%edx
c003204e:	8b 52 10             	mov    0x10(%edx),%edx
c0032051:	83 ec 08             	sub    $0x8,%esp
c0032054:	51                   	push   %ecx
c0032055:	52                   	push   %edx
c0032056:	89 c3                	mov    %eax,%ebx
c0032058:	e8 7c e0 ff ff       	call   c00300d9 <fs_open>
c003205d:	83 c4 10             	add    $0x10,%esp
c0032060:	89 c2                	mov    %eax,%edx
c0032062:	8b 45 08             	mov    0x8(%ebp),%eax
c0032065:	89 50 1c             	mov    %edx,0x1c(%eax)
c0032068:	90                   	nop
c0032069:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003206c:	c9                   	leave  
c003206d:	c3                   	ret    

c003206e <sys_read>:
c003206e:	55                   	push   %ebp
c003206f:	89 e5                	mov    %esp,%ebp
c0032071:	53                   	push   %ebx
c0032072:	83 ec 04             	sub    $0x4,%esp
c0032075:	e8 b9 e9 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c003207a:	05 86 9f 00 00       	add    $0x9f86,%eax
c003207f:	8b 55 08             	mov    0x8(%ebp),%edx
c0032082:	8b 52 14             	mov    0x14(%edx),%edx
c0032085:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0032088:	8b 49 18             	mov    0x18(%ecx),%ecx
c003208b:	89 cb                	mov    %ecx,%ebx
c003208d:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0032090:	8b 49 10             	mov    0x10(%ecx),%ecx
c0032093:	83 ec 04             	sub    $0x4,%esp
c0032096:	52                   	push   %edx
c0032097:	53                   	push   %ebx
c0032098:	51                   	push   %ecx
c0032099:	89 c3                	mov    %eax,%ebx
c003209b:	e8 73 e1 ff ff       	call   c0030213 <fs_read>
c00320a0:	83 c4 10             	add    $0x10,%esp
c00320a3:	89 c2                	mov    %eax,%edx
c00320a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00320a8:	89 50 1c             	mov    %edx,0x1c(%eax)
c00320ab:	90                   	nop
c00320ac:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00320af:	c9                   	leave  
c00320b0:	c3                   	ret    

c00320b1 <sys_write>:
c00320b1:	55                   	push   %ebp
c00320b2:	89 e5                	mov    %esp,%ebp
c00320b4:	53                   	push   %ebx
c00320b5:	83 ec 04             	sub    $0x4,%esp
c00320b8:	e8 76 e9 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c00320bd:	05 43 9f 00 00       	add    $0x9f43,%eax
c00320c2:	8b 55 08             	mov    0x8(%ebp),%edx
c00320c5:	8b 52 14             	mov    0x14(%edx),%edx
c00320c8:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00320cb:	8b 49 18             	mov    0x18(%ecx),%ecx
c00320ce:	89 cb                	mov    %ecx,%ebx
c00320d0:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00320d3:	8b 49 10             	mov    0x10(%ecx),%ecx
c00320d6:	83 ec 04             	sub    $0x4,%esp
c00320d9:	52                   	push   %edx
c00320da:	53                   	push   %ebx
c00320db:	51                   	push   %ecx
c00320dc:	89 c3                	mov    %eax,%ebx
c00320de:	e8 8b e3 ff ff       	call   c003046e <fs_write>
c00320e3:	83 c4 10             	add    $0x10,%esp
c00320e6:	89 c2                	mov    %eax,%edx
c00320e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00320eb:	89 50 1c             	mov    %edx,0x1c(%eax)
c00320ee:	90                   	nop
c00320ef:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00320f2:	c9                   	leave  
c00320f3:	c3                   	ret    

c00320f4 <sys_lseek>:
c00320f4:	55                   	push   %ebp
c00320f5:	89 e5                	mov    %esp,%ebp
c00320f7:	53                   	push   %ebx
c00320f8:	83 ec 04             	sub    $0x4,%esp
c00320fb:	e8 33 e9 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0032100:	05 00 9f 00 00       	add    $0x9f00,%eax
c0032105:	8b 55 08             	mov    0x8(%ebp),%edx
c0032108:	8b 52 14             	mov    0x14(%edx),%edx
c003210b:	89 d3                	mov    %edx,%ebx
c003210d:	8b 55 08             	mov    0x8(%ebp),%edx
c0032110:	8b 52 18             	mov    0x18(%edx),%edx
c0032113:	89 d1                	mov    %edx,%ecx
c0032115:	8b 55 08             	mov    0x8(%ebp),%edx
c0032118:	8b 52 10             	mov    0x10(%edx),%edx
c003211b:	83 ec 04             	sub    $0x4,%esp
c003211e:	53                   	push   %ebx
c003211f:	51                   	push   %ecx
c0032120:	52                   	push   %edx
c0032121:	89 c3                	mov    %eax,%ebx
c0032123:	e8 14 e6 ff ff       	call   c003073c <fs_lseek>
c0032128:	83 c4 10             	add    $0x10,%esp
c003212b:	89 c2                	mov    %eax,%edx
c003212d:	8b 45 08             	mov    0x8(%ebp),%eax
c0032130:	89 50 1c             	mov    %edx,0x1c(%eax)
c0032133:	90                   	nop
c0032134:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0032137:	c9                   	leave  
c0032138:	c3                   	ret    

c0032139 <sys_close>:
c0032139:	55                   	push   %ebp
c003213a:	89 e5                	mov    %esp,%ebp
c003213c:	53                   	push   %ebx
c003213d:	83 ec 04             	sub    $0x4,%esp
c0032140:	e8 ee e8 ff ff       	call   c0030a33 <__x86.get_pc_thunk.ax>
c0032145:	05 bb 9e 00 00       	add    $0x9ebb,%eax
c003214a:	8b 55 08             	mov    0x8(%ebp),%edx
c003214d:	8b 52 10             	mov    0x10(%edx),%edx
c0032150:	83 ec 0c             	sub    $0xc,%esp
c0032153:	52                   	push   %edx
c0032154:	89 c3                	mov    %eax,%ebx
c0032156:	e8 a1 e6 ff ff       	call   c00307fc <fs_close>
c003215b:	83 c4 10             	add    $0x10,%esp
c003215e:	89 c2                	mov    %eax,%edx
c0032160:	8b 45 08             	mov    0x8(%ebp),%eax
c0032163:	89 50 1c             	mov    %edx,0x1c(%eax)
c0032166:	90                   	nop
c0032167:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003216a:	c9                   	leave  
c003216b:	c3                   	ret    

c003216c <do_syscall>:
c003216c:	55                   	push   %ebp
c003216d:	89 e5                	mov    %esp,%ebp
c003216f:	53                   	push   %ebx
c0032170:	83 ec 04             	sub    $0x4,%esp
c0032173:	e8 bd e7 ff ff       	call   c0030935 <__x86.get_pc_thunk.bx>
c0032178:	81 c3 88 9e 00 00    	add    $0x9e88,%ebx
c003217e:	8b 45 08             	mov    0x8(%ebp),%eax
c0032181:	8b 40 1c             	mov    0x1c(%eax),%eax
c0032184:	83 f8 2d             	cmp    $0x2d,%eax
c0032187:	0f 87 98 00 00 00    	ja     c0032225 <.L10>
c003218d:	c1 e0 02             	shl    $0x2,%eax
c0032190:	8b 84 18 d8 d3 ff ff 	mov    -0x2c28(%eax,%ebx,1),%eax
c0032197:	01 d8                	add    %ebx,%eax
c0032199:	ff e0                	jmp    *%eax

c003219b <.L11>:
c003219b:	e8 4c fe ff ff       	call   c0031fec <cli>
c00321a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00321a3:	8b 40 18             	mov    0x18(%eax),%eax
c00321a6:	89 c2                	mov    %eax,%edx
c00321a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00321ab:	8b 40 10             	mov    0x10(%eax),%eax
c00321ae:	83 ec 08             	sub    $0x8,%esp
c00321b1:	52                   	push   %edx
c00321b2:	50                   	push   %eax
c00321b3:	e8 7f e8 ff ff       	call   c0030a37 <add_irq_handle>
c00321b8:	83 c4 10             	add    $0x10,%esp
c00321bb:	e8 1b fe ff ff       	call   c0031fdb <sti>
c00321c0:	e9 8f 00 00 00       	jmp    c0032254 <.L10+0x2f>

c00321c5 <.L18>:
c00321c5:	83 ec 0c             	sub    $0xc,%esp
c00321c8:	ff 75 08             	pushl  0x8(%ebp)
c00321cb:	e8 2d fe ff ff       	call   c0031ffd <sys_brk>
c00321d0:	83 c4 10             	add    $0x10,%esp
c00321d3:	eb 7f                	jmp    c0032254 <.L10+0x2f>

c00321d5 <.L15>:
c00321d5:	83 ec 0c             	sub    $0xc,%esp
c00321d8:	ff 75 08             	pushl  0x8(%ebp)
c00321db:	e8 52 fe ff ff       	call   c0032032 <sys_open>
c00321e0:	83 c4 10             	add    $0x10,%esp
c00321e3:	eb 6f                	jmp    c0032254 <.L10+0x2f>

c00321e5 <.L13>:
c00321e5:	83 ec 0c             	sub    $0xc,%esp
c00321e8:	ff 75 08             	pushl  0x8(%ebp)
c00321eb:	e8 7e fe ff ff       	call   c003206e <sys_read>
c00321f0:	83 c4 10             	add    $0x10,%esp
c00321f3:	eb 5f                	jmp    c0032254 <.L10+0x2f>

c00321f5 <.L14>:
c00321f5:	83 ec 0c             	sub    $0xc,%esp
c00321f8:	ff 75 08             	pushl  0x8(%ebp)
c00321fb:	e8 b1 fe ff ff       	call   c00320b1 <sys_write>
c0032200:	83 c4 10             	add    $0x10,%esp
c0032203:	eb 4f                	jmp    c0032254 <.L10+0x2f>

c0032205 <.L17>:
c0032205:	83 ec 0c             	sub    $0xc,%esp
c0032208:	ff 75 08             	pushl  0x8(%ebp)
c003220b:	e8 e4 fe ff ff       	call   c00320f4 <sys_lseek>
c0032210:	83 c4 10             	add    $0x10,%esp
c0032213:	eb 3f                	jmp    c0032254 <.L10+0x2f>

c0032215 <.L16>:
c0032215:	83 ec 0c             	sub    $0xc,%esp
c0032218:	ff 75 08             	pushl  0x8(%ebp)
c003221b:	e8 19 ff ff ff       	call   c0032139 <sys_close>
c0032220:	83 c4 10             	add    $0x10,%esp
c0032223:	eb 2f                	jmp    c0032254 <.L10+0x2f>

c0032225 <.L10>:
c0032225:	8b 45 08             	mov    0x8(%ebp),%eax
c0032228:	8b 40 1c             	mov    0x1c(%eax),%eax
c003222b:	83 ec 0c             	sub    $0xc,%esp
c003222e:	50                   	push   %eax
c003222f:	8d 83 90 d4 ff ff    	lea    -0x2b70(%ebx),%eax
c0032235:	50                   	push   %eax
c0032236:	6a 35                	push   $0x35
c0032238:	8d 83 68 d3 ff ff    	lea    -0x2c98(%ebx),%eax
c003223e:	50                   	push   %eax
c003223f:	8d 83 84 d3 ff ff    	lea    -0x2c7c(%ebx),%eax
c0032245:	50                   	push   %eax
c0032246:	e8 fb f7 ff ff       	call   c0031a46 <printk>
c003224b:	83 c4 20             	add    $0x20,%esp
c003224e:	b8 01 00 00 00       	mov    $0x1,%eax
c0032253:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)
c003225a:	66 90                	xchg   %ax,%ax
c003225c:	66 90                	xchg   %ax,%ax
c003225e:	66 90                	xchg   %ax,%ax

c0032260 <mm_malloc>:
c0032260:	55                   	push   %ebp
c0032261:	31 c0                	xor    %eax,%eax
c0032263:	89 e5                	mov    %esp,%ebp
c0032265:	57                   	push   %edi
c0032266:	56                   	push   %esi
c0032267:	53                   	push   %ebx
c0032268:	83 ec 3c             	sub    $0x3c,%esp
c003226b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003226e:	85 db                	test   %ebx,%ebx
c0032270:	0f 8e 36 02 00 00    	jle    c00324ac <mm_malloc+0x24c>
c0032276:	e8 1f f8 ff ff       	call   c0031a9a <get_updir>
c003227b:	89 c6                	mov    %eax,%esi
c003227d:	e8 2d f8 ff ff       	call   c0031aaf <get_ucr3>
c0032282:	8b 55 08             	mov    0x8(%ebp),%edx
c0032285:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0032289:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c003228c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c003228f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0032294:	29 d0                	sub    %edx,%eax
c0032296:	89 da                	mov    %ebx,%edx
c0032298:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c003229e:	01 d0                	add    %edx,%eax
c00322a0:	85 c0                	test   %eax,%eax
c00322a2:	0f 8e c0 00 00 00    	jle    c0032368 <mm_malloc+0x108>
c00322a8:	8b 55 08             	mov    0x8(%ebp),%edx
c00322ab:	83 e8 01             	sub    $0x1,%eax
c00322ae:	89 f7                	mov    %esi,%edi
c00322b0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00322b5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c00322bc:	89 d3                	mov    %edx,%ebx
c00322be:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00322c1:	eb 51                	jmp    c0032314 <mm_malloc+0xb4>
c00322c3:	90                   	nop
c00322c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00322c8:	8b 31                	mov    (%ecx),%esi
c00322ca:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c00322d0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c00322d6:	89 d8                	mov    %ebx,%eax
c00322d8:	c1 e8 0a             	shr    $0xa,%eax
c00322db:	25 fc 0f 00 00       	and    $0xffc,%eax
c00322e0:	01 c6                	add    %eax,%esi
c00322e2:	f6 06 01             	testb  $0x1,(%esi)
c00322e5:	75 22                	jne    c0032309 <mm_malloc+0xa9>
c00322e7:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c00322ec:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c00322f1:	0f 8f c1 01 00 00    	jg     c00324b8 <mm_malloc+0x258>
c00322f7:	89 c1                	mov    %eax,%ecx
c00322f9:	83 c0 01             	add    $0x1,%eax
c00322fc:	c1 e1 0c             	shl    $0xc,%ecx
c00322ff:	83 c9 07             	or     $0x7,%ecx
c0032302:	89 0e                	mov    %ecx,(%esi)
c0032304:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0032309:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c003230f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0032312:	74 54                	je     c0032368 <mm_malloc+0x108>
c0032314:	89 d8                	mov    %ebx,%eax
c0032316:	c1 e8 16             	shr    $0x16,%eax
c0032319:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c003231c:	f6 01 01             	testb  $0x1,(%ecx)
c003231f:	75 a7                	jne    c00322c8 <mm_malloc+0x68>
c0032321:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0032326:	89 c6                	mov    %eax,%esi
c0032328:	83 c0 01             	add    $0x1,%eax
c003232b:	c1 e6 0c             	shl    $0xc,%esi
c003232e:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0032334:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0032339:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c003233f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0032344:	83 c8 07             	or     $0x7,%eax
c0032347:	89 01                	mov    %eax,(%ecx)
c0032349:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0032350:	00 
c0032351:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0032358:	00 
c0032359:	89 34 24             	mov    %esi,(%esp)
c003235c:	e8 db 01 00 00       	call   c003253c <memset>
c0032361:	e9 70 ff ff ff       	jmp    c00322d6 <mm_malloc+0x76>
c0032366:	66 90                	xchg   %ax,%ax
c0032368:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003236b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003236e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0032374:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c003237a:	c1 e8 16             	shr    $0x16,%eax
c003237d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0032380:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0032386:	75 32                	jne    c00323ba <mm_malloc+0x15a>
c0032388:	c7 44 24 10 bf 94 03 	movl   $0xc00394bf,0x10(%esp)
c003238f:	c0 
c0032390:	c7 44 24 0c 26 95 03 	movl   $0xc0039526,0xc(%esp)
c0032397:	c0 
c0032398:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c003239f:	00 
c00323a0:	c7 44 24 04 ae 94 03 	movl   $0xc00394ae,0x4(%esp)
c00323a7:	c0 
c00323a8:	c7 04 24 d0 94 03 c0 	movl   $0xc00394d0,(%esp)
c00323af:	e8 92 f6 ff ff       	call   c0031a46 <printk>
c00323b4:	b8 01 00 00 00       	mov    $0x1,%eax
c00323b9:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c00323c0:	00 00                	add    %al,(%eax)
c00323c2:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c00323c9:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c00323d0:	00 f6                	add    %dh,%dh
c00323d2:	04 90                	add    $0x90,%al
c00323d4:	01 75 32             	add    %esi,0x32(%ebp)
c00323d7:	c7 44 24 10 c7 94 03 	movl   $0xc00394c7,0x10(%esp)
c00323de:	c0 
c00323df:	c7 44 24 0c 26 95 03 	movl   $0xc0039526,0xc(%esp)
c00323e6:	c0 
c00323e7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c00323ee:	00 
c00323ef:	c7 44 24 04 ae 94 03 	movl   $0xc00394ae,0x4(%esp)
c00323f6:	c0 
c00323f7:	c7 04 24 d0 94 03 c0 	movl   $0xc00394d0,(%esp)
c00323fe:	e8 43 f6 ff ff       	call   c0031a46 <printk>
c0032403:	b8 01 00 00 00       	mov    $0x1,%eax
c0032408:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c003240f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0032412:	f6 c3 01             	test   $0x1,%bl
c0032415:	75 32                	jne    c0032449 <mm_malloc+0x1e9>
c0032417:	c7 44 24 10 bf 94 03 	movl   $0xc00394bf,0x10(%esp)
c003241e:	c0 
c003241f:	c7 44 24 0c 26 95 03 	movl   $0xc0039526,0xc(%esp)
c0032426:	c0 
c0032427:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c003242e:	00 
c003242f:	c7 44 24 04 ae 94 03 	movl   $0xc00394ae,0x4(%esp)
c0032436:	c0 
c0032437:	c7 04 24 d0 94 03 c0 	movl   $0xc00394d0,(%esp)
c003243e:	e8 03 f6 ff ff       	call   c0031a46 <printk>
c0032443:	b8 01 00 00 00       	mov    $0x1,%eax
c0032448:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c003244f:	00 00                	add    %al,(%eax)
c0032451:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0032458:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c003245f:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0032465:	01 75 32             	add    %esi,0x32(%ebp)
c0032468:	c7 44 24 10 c7 94 03 	movl   $0xc00394c7,0x10(%esp)
c003246f:	c0 
c0032470:	c7 44 24 0c 26 95 03 	movl   $0xc0039526,0xc(%esp)
c0032477:	c0 
c0032478:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c003247f:	00 
c0032480:	c7 44 24 04 ae 94 03 	movl   $0xc00394ae,0x4(%esp)
c0032487:	c0 
c0032488:	c7 04 24 d0 94 03 c0 	movl   $0xc00394d0,(%esp)
c003248f:	e8 b2 f5 ff ff       	call   c0031a46 <printk>
c0032494:	b8 01 00 00 00       	mov    $0x1,%eax
c0032499:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c00324a0:	00 f0                	add    %dh,%al
c00324a2:	ff                   	(bad)  
c00324a3:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c00324a9:	00 09                	add    %cl,(%ecx)
c00324ab:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c00324b1:	5f                   	pop    %edi
c00324b2:	5d                   	pop    %ebp
c00324b3:	c3                   	ret    
c00324b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00324b8:	c7 44 24 10 9b 94 03 	movl   $0xc003949b,0x10(%esp)
c00324bf:	c0 
c00324c0:	c7 44 24 0c 1c 95 03 	movl   $0xc003951c,0xc(%esp)
c00324c7:	c0 
c00324c8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c00324cf:	00 
c00324d0:	c7 44 24 04 ae 94 03 	movl   $0xc00394ae,0x4(%esp)
c00324d7:	c0 
c00324d8:	c7 04 24 d0 94 03 c0 	movl   $0xc00394d0,(%esp)
c00324df:	e8 62 f5 ff ff       	call   c0031a46 <printk>
c00324e4:	b8 01 00 00 00       	mov    $0x1,%eax
c00324e9:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c00324f0:	03 fe                	add    %esi,%edi
c00324f2:	ff                   	(bad)  
c00324f3:	ff                   	.byte 0xff

c00324f4 <memcpy>:
c00324f4:	55                   	push   %ebp
c00324f5:	89 e5                	mov    %esp,%ebp
c00324f7:	56                   	push   %esi
c00324f8:	57                   	push   %edi
c00324f9:	53                   	push   %ebx
c00324fa:	8b 7d 08             	mov    0x8(%ebp),%edi
c00324fd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0032500:	8b 75 0c             	mov    0xc(%ebp),%esi
c0032503:	fc                   	cld    
c0032504:	83 f9 08             	cmp    $0x8,%ecx
c0032507:	76 26                	jbe    c003252f <memcpy+0x3b>
c0032509:	89 fa                	mov    %edi,%edx
c003250b:	89 cb                	mov    %ecx,%ebx
c003250d:	83 e2 03             	and    $0x3,%edx
c0032510:	74 10                	je     c0032522 <memcpy+0x2e>
c0032512:	b9 04 00 00 00       	mov    $0x4,%ecx
c0032517:	29 d1                	sub    %edx,%ecx
c0032519:	83 e1 03             	and    $0x3,%ecx
c003251c:	29 cb                	sub    %ecx,%ebx
c003251e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032520:	89 d9                	mov    %ebx,%ecx
c0032522:	c1 e9 02             	shr    $0x2,%ecx
c0032525:	8d 76 00             	lea    0x0(%esi),%esi
c0032528:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003252a:	89 d9                	mov    %ebx,%ecx
c003252c:	83 e1 03             	and    $0x3,%ecx
c003252f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032531:	8b 45 08             	mov    0x8(%ebp),%eax
c0032534:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0032537:	5b                   	pop    %ebx
c0032538:	5f                   	pop    %edi
c0032539:	5e                   	pop    %esi
c003253a:	c9                   	leave  
c003253b:	c3                   	ret    

c003253c <memset>:
c003253c:	55                   	push   %ebp
c003253d:	89 e5                	mov    %esp,%ebp
c003253f:	57                   	push   %edi
c0032540:	8b 7d 08             	mov    0x8(%ebp),%edi
c0032543:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0032547:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003254a:	fc                   	cld    
c003254b:	83 f9 10             	cmp    $0x10,%ecx
c003254e:	76 69                	jbe    c00325b9 <memset+0x7d>
c0032550:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032556:	74 4c                	je     c00325a4 <memset+0x68>
c0032558:	88 07                	mov    %al,(%edi)
c003255a:	47                   	inc    %edi
c003255b:	49                   	dec    %ecx
c003255c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032562:	74 40                	je     c00325a4 <memset+0x68>
c0032564:	88 07                	mov    %al,(%edi)
c0032566:	47                   	inc    %edi
c0032567:	49                   	dec    %ecx
c0032568:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003256e:	74 34                	je     c00325a4 <memset+0x68>
c0032570:	88 07                	mov    %al,(%edi)
c0032572:	47                   	inc    %edi
c0032573:	49                   	dec    %ecx
c0032574:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003257a:	74 28                	je     c00325a4 <memset+0x68>
c003257c:	88 07                	mov    %al,(%edi)
c003257e:	47                   	inc    %edi
c003257f:	49                   	dec    %ecx
c0032580:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032586:	74 1c                	je     c00325a4 <memset+0x68>
c0032588:	88 07                	mov    %al,(%edi)
c003258a:	47                   	inc    %edi
c003258b:	49                   	dec    %ecx
c003258c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032592:	74 10                	je     c00325a4 <memset+0x68>
c0032594:	88 07                	mov    %al,(%edi)
c0032596:	47                   	inc    %edi
c0032597:	49                   	dec    %ecx
c0032598:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003259e:	74 04                	je     c00325a4 <memset+0x68>
c00325a0:	88 07                	mov    %al,(%edi)
c00325a2:	47                   	inc    %edi
c00325a3:	49                   	dec    %ecx
c00325a4:	88 c4                	mov    %al,%ah
c00325a6:	89 c2                	mov    %eax,%edx
c00325a8:	c1 e2 10             	shl    $0x10,%edx
c00325ab:	09 d0                	or     %edx,%eax
c00325ad:	89 ca                	mov    %ecx,%edx
c00325af:	c1 e9 02             	shr    $0x2,%ecx
c00325b2:	83 e2 03             	and    $0x3,%edx
c00325b5:	f3 ab                	rep stos %eax,%es:(%edi)
c00325b7:	89 d1                	mov    %edx,%ecx
c00325b9:	f3 aa                	rep stos %al,%es:(%edi)
c00325bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00325be:	8d 65 fc             	lea    -0x4(%ebp),%esp
c00325c1:	5f                   	pop    %edi
c00325c2:	c9                   	leave  
c00325c3:	c3                   	ret    
c00325c4:	66 90                	xchg   %ax,%ax
c00325c6:	66 90                	xchg   %ax,%ax
c00325c8:	66 90                	xchg   %ax,%ax
c00325ca:	66 90                	xchg   %ax,%ax
c00325cc:	66 90                	xchg   %ax,%ax
c00325ce:	66 90                	xchg   %ax,%ax

c00325d0 <strcmp>:
c00325d0:	55                   	push   %ebp
c00325d1:	89 e5                	mov    %esp,%ebp
c00325d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00325d6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00325d9:	53                   	push   %ebx
c00325da:	89 c1                	mov    %eax,%ecx
c00325dc:	09 d1                	or     %edx,%ecx
c00325de:	83 e1 03             	and    $0x3,%ecx
c00325e1:	75 17                	jne    c00325fa <strcmp+0x2a>
c00325e3:	8b 08                	mov    (%eax),%ecx
c00325e5:	3b 0a                	cmp    (%edx),%ecx
c00325e7:	74 33                	je     c003261c <strcmp+0x4c>
c00325e9:	eb 0f                	jmp    c00325fa <strcmp+0x2a>
c00325eb:	90                   	nop
c00325ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00325f0:	3a 0a                	cmp    (%edx),%cl
c00325f2:	75 0d                	jne    c0032601 <strcmp+0x31>
c00325f4:	83 c0 01             	add    $0x1,%eax
c00325f7:	83 c2 01             	add    $0x1,%edx
c00325fa:	0f b6 08             	movzbl (%eax),%ecx
c00325fd:	84 c9                	test   %cl,%cl
c00325ff:	75 ef                	jne    c00325f0 <strcmp+0x20>
c0032601:	0f b6 00             	movzbl (%eax),%eax
c0032604:	0f b6 12             	movzbl (%edx),%edx
c0032607:	5b                   	pop    %ebx
c0032608:	5d                   	pop    %ebp
c0032609:	29 d0                	sub    %edx,%eax
c003260b:	c3                   	ret    
c003260c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032610:	83 c0 04             	add    $0x4,%eax
c0032613:	83 c2 04             	add    $0x4,%edx
c0032616:	8b 08                	mov    (%eax),%ecx
c0032618:	3b 0a                	cmp    (%edx),%ecx
c003261a:	75 de                	jne    c00325fa <strcmp+0x2a>
c003261c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0032622:	f7 d1                	not    %ecx
c0032624:	21 cb                	and    %ecx,%ebx
c0032626:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c003262c:	74 e2                	je     c0032610 <strcmp+0x40>
c003262e:	31 c0                	xor    %eax,%eax
c0032630:	5b                   	pop    %ebx
c0032631:	5d                   	pop    %ebp
c0032632:	c3                   	ret    
c0032633:	66 90                	xchg   %ax,%ax
c0032635:	66 90                	xchg   %ax,%ax
c0032637:	66 90                	xchg   %ax,%ax
c0032639:	66 90                	xchg   %ax,%ax
c003263b:	66 90                	xchg   %ax,%ax
c003263d:	66 90                	xchg   %ax,%ax
c003263f:	90                   	nop

c0032640 <_vsnprintf_r>:
c0032640:	55                   	push   %ebp
c0032641:	89 e5                	mov    %esp,%ebp
c0032643:	56                   	push   %esi
c0032644:	53                   	push   %ebx
c0032645:	83 c4 80             	add    $0xffffff80,%esp
c0032648:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003264b:	8b 75 08             	mov    0x8(%ebp),%esi
c003264e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032651:	85 db                	test   %ebx,%ebx
c0032653:	78 63                	js     c00326b8 <_vsnprintf_r+0x78>
c0032655:	ba 08 02 00 00       	mov    $0x208,%edx
c003265a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003265f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0032663:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0032666:	89 45 90             	mov    %eax,-0x70(%ebp)
c0032669:	89 45 a0             	mov    %eax,-0x60(%ebp)
c003266c:	31 c0                	xor    %eax,%eax
c003266e:	85 db                	test   %ebx,%ebx
c0032670:	0f 45 c2             	cmovne %edx,%eax
c0032673:	89 45 98             	mov    %eax,-0x68(%ebp)
c0032676:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0032679:	8b 45 18             	mov    0x18(%ebp),%eax
c003267c:	89 34 24             	mov    %esi,(%esp)
c003267f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0032683:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0032687:	8b 45 14             	mov    0x14(%ebp),%eax
c003268a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003268e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0032691:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032695:	e8 86 00 00 00       	call   c0032720 <_svfprintf_r>
c003269a:	83 f8 ff             	cmp    $0xffffffff,%eax
c003269d:	7c 11                	jl     c00326b0 <_vsnprintf_r+0x70>
c003269f:	85 db                	test   %ebx,%ebx
c00326a1:	74 06                	je     c00326a9 <_vsnprintf_r+0x69>
c00326a3:	8b 55 90             	mov    -0x70(%ebp),%edx
c00326a6:	c6 02 00             	movb   $0x0,(%edx)
c00326a9:	83 ec 80             	sub    $0xffffff80,%esp
c00326ac:	5b                   	pop    %ebx
c00326ad:	5e                   	pop    %esi
c00326ae:	5d                   	pop    %ebp
c00326af:	c3                   	ret    
c00326b0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c00326b6:	eb e7                	jmp    c003269f <_vsnprintf_r+0x5f>
c00326b8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c00326be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00326c3:	eb e4                	jmp    c00326a9 <_vsnprintf_r+0x69>
c00326c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00326c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00326d0 <vsnprintf>:
c00326d0:	55                   	push   %ebp
c00326d1:	89 e5                	mov    %esp,%ebp
c00326d3:	83 ec 28             	sub    $0x28,%esp
c00326d6:	e8 35 00 00 00       	call   c0032710 <__getreent>
c00326db:	8b 55 14             	mov    0x14(%ebp),%edx
c00326de:	89 54 24 10          	mov    %edx,0x10(%esp)
c00326e2:	8b 55 10             	mov    0x10(%ebp),%edx
c00326e5:	89 04 24             	mov    %eax,(%esp)
c00326e8:	89 54 24 0c          	mov    %edx,0xc(%esp)
c00326ec:	8b 55 0c             	mov    0xc(%ebp),%edx
c00326ef:	89 54 24 08          	mov    %edx,0x8(%esp)
c00326f3:	8b 55 08             	mov    0x8(%ebp),%edx
c00326f6:	89 54 24 04          	mov    %edx,0x4(%esp)
c00326fa:	e8 41 ff ff ff       	call   c0032640 <_vsnprintf_r>
c00326ff:	c9                   	leave  
c0032700:	c3                   	ret    
c0032701:	66 90                	xchg   %ax,%ax
c0032703:	66 90                	xchg   %ax,%ax
c0032705:	66 90                	xchg   %ax,%ax
c0032707:	66 90                	xchg   %ax,%ax
c0032709:	66 90                	xchg   %ax,%ax
c003270b:	66 90                	xchg   %ax,%ax
c003270d:	66 90                	xchg   %ax,%ax
c003270f:	90                   	nop

c0032710 <__getreent>:
c0032710:	55                   	push   %ebp
c0032711:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0032716:	89 e5                	mov    %esp,%ebp
c0032718:	5d                   	pop    %ebp
c0032719:	c3                   	ret    
c003271a:	66 90                	xchg   %ax,%ax
c003271c:	66 90                	xchg   %ax,%ax
c003271e:	66 90                	xchg   %ax,%ax

c0032720 <_svfprintf_r>:
c0032720:	55                   	push   %ebp
c0032721:	89 e5                	mov    %esp,%ebp
c0032723:	57                   	push   %edi
c0032724:	56                   	push   %esi
c0032725:	53                   	push   %ebx
c0032726:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003272c:	8b 45 08             	mov    0x8(%ebp),%eax
c003272f:	89 04 24             	mov    %eax,(%esp)
c0032732:	e8 89 33 00 00       	call   c0035ac0 <_localeconv_r>
c0032737:	8b 00                	mov    (%eax),%eax
c0032739:	89 04 24             	mov    %eax,(%esp)
c003273c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032742:	e8 69 4a 00 00       	call   c00371b0 <strlen>
c0032747:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003274d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032750:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032754:	74 0b                	je     c0032761 <_svfprintf_r+0x41>
c0032756:	8b 40 10             	mov    0x10(%eax),%eax
c0032759:	85 c0                	test   %eax,%eax
c003275b:	0f 84 62 18 00 00    	je     c0033fc3 <_svfprintf_r+0x18a3>
c0032761:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032764:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032767:	89 c7                	mov    %eax,%edi
c0032769:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003276f:	d9 ee                	fldz   
c0032771:	29 d0                	sub    %edx,%eax
c0032773:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003277a:	00 00 00 
c003277d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032783:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003278a:	00 00 00 
c003278d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032794:	00 00 00 
c0032797:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003279e:	00 00 00 
c00327a1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c00327a8:	00 00 00 
c00327ab:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c00327b2:	00 00 00 
c00327b5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c00327bb:	8b 45 10             	mov    0x10(%ebp),%eax
c00327be:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00327c1:	0f b6 00             	movzbl (%eax),%eax
c00327c4:	3c 25                	cmp    $0x25,%al
c00327c6:	74 4d                	je     c0032815 <_svfprintf_r+0xf5>
c00327c8:	84 c0                	test   %al,%al
c00327ca:	75 08                	jne    c00327d4 <_svfprintf_r+0xb4>
c00327cc:	eb 47                	jmp    c0032815 <_svfprintf_r+0xf5>
c00327ce:	66 90                	xchg   %ax,%ax
c00327d0:	84 c0                	test   %al,%al
c00327d2:	74 0a                	je     c00327de <_svfprintf_r+0xbe>
c00327d4:	83 c3 01             	add    $0x1,%ebx
c00327d7:	0f b6 03             	movzbl (%ebx),%eax
c00327da:	3c 25                	cmp    $0x25,%al
c00327dc:	75 f2                	jne    c00327d0 <_svfprintf_r+0xb0>
c00327de:	89 de                	mov    %ebx,%esi
c00327e0:	2b 75 10             	sub    0x10(%ebp),%esi
c00327e3:	74 30                	je     c0032815 <_svfprintf_r+0xf5>
c00327e5:	8b 45 10             	mov    0x10(%ebp),%eax
c00327e8:	83 c7 08             	add    $0x8,%edi
c00327eb:	89 77 fc             	mov    %esi,-0x4(%edi)
c00327ee:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c00327f4:	89 47 f8             	mov    %eax,-0x8(%edi)
c00327f7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00327fd:	83 c0 01             	add    $0x1,%eax
c0032800:	83 f8 07             	cmp    $0x7,%eax
c0032803:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032809:	0f 8f 91 00 00 00    	jg     c00328a0 <_svfprintf_r+0x180>
c003280f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032815:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032818:	0f 84 aa 00 00 00    	je     c00328c8 <_svfprintf_r+0x1a8>
c003281e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032821:	be 20 00 00 00       	mov    $0x20,%esi
c0032826:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003282d:	31 db                	xor    %ebx,%ebx
c003282f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032836:	ff ff ff 
c0032839:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032840:	00 00 00 
c0032843:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003284a:	00 00 00 
c003284d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032850:	0f be 00             	movsbl (%eax),%eax
c0032853:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032856:	83 fa 58             	cmp    $0x58,%edx
c0032859:	0f 87 8f 07 00 00    	ja     c0032fee <_svfprintf_r+0x8ce>
c003285f:	ff 24 95 70 95 03 c0 	jmp    *-0x3ffc6a90(,%edx,4)
c0032866:	66 90                	xchg   %ax,%ax
c0032868:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003286f:	89 c8                	mov    %ecx,%eax
c0032871:	eb da                	jmp    c003284d <_svfprintf_r+0x12d>
c0032873:	8b 45 14             	mov    0x14(%ebp),%eax
c0032876:	8b 55 14             	mov    0x14(%ebp),%edx
c0032879:	8b 00                	mov    (%eax),%eax
c003287b:	83 c2 04             	add    $0x4,%edx
c003287e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032881:	85 c0                	test   %eax,%eax
c0032883:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032889:	79 e4                	jns    c003286f <_svfprintf_r+0x14f>
c003288b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032891:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032898:	89 c8                	mov    %ecx,%eax
c003289a:	eb b1                	jmp    c003284d <_svfprintf_r+0x12d>
c003289c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328a0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00328a6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00328aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00328ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c00328b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00328b4:	89 04 24             	mov    %eax,(%esp)
c00328b7:	e8 74 49 00 00       	call   c0037230 <__ssprint_r>
c00328bc:	85 c0                	test   %eax,%eax
c00328be:	75 30                	jne    c00328f0 <_svfprintf_r+0x1d0>
c00328c0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00328c3:	e9 47 ff ff ff       	jmp    c003280f <_svfprintf_r+0xef>
c00328c8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00328ce:	85 c0                	test   %eax,%eax
c00328d0:	74 1e                	je     c00328f0 <_svfprintf_r+0x1d0>
c00328d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00328d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00328dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00328df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00328e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00328e6:	89 04 24             	mov    %eax,(%esp)
c00328e9:	e8 42 49 00 00       	call   c0037230 <__ssprint_r>
c00328ee:	66 90                	xchg   %ax,%ax
c00328f0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00328f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00328f8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c00328fc:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032903:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032909:	5b                   	pop    %ebx
c003290a:	5e                   	pop    %esi
c003290b:	5f                   	pop    %edi
c003290c:	5d                   	pop    %ebp
c003290d:	c3                   	ret    
c003290e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032913:	89 c8                	mov    %ecx,%eax
c0032915:	e9 33 ff ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c003291a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032920:	8b 45 14             	mov    0x14(%ebp),%eax
c0032923:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032926:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003292d:	8d 70 04             	lea    0x4(%eax),%esi
c0032930:	8b 00                	mov    (%eax),%eax
c0032932:	85 c0                	test   %eax,%eax
c0032934:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003293a:	0f 84 7f 18 00 00    	je     c00341bf <_svfprintf_r+0x1a9f>
c0032940:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032946:	85 c0                	test   %eax,%eax
c0032948:	0f 88 b6 17 00 00    	js     c0034104 <_svfprintf_r+0x19e4>
c003294e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032952:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032958:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003295f:	00 
c0032960:	89 04 24             	mov    %eax,(%esp)
c0032963:	e8 f8 38 00 00       	call   c0036260 <memchr>
c0032968:	85 c0                	test   %eax,%eax
c003296a:	0f 84 a0 19 00 00    	je     c0034310 <_svfprintf_r+0x1bf0>
c0032970:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032976:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003297c:	39 d0                	cmp    %edx,%eax
c003297e:	0f 4f c2             	cmovg  %edx,%eax
c0032981:	89 c2                	mov    %eax,%edx
c0032983:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003298a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032990:	31 c0                	xor    %eax,%eax
c0032992:	85 d2                	test   %edx,%edx
c0032994:	0f 49 c2             	cmovns %edx,%eax
c0032997:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003299d:	89 75 14             	mov    %esi,0x14(%ebp)
c00329a0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00329a7:	00 00 00 
c00329aa:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00329b1:	00 00 00 
c00329b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329b8:	84 db                	test   %bl,%bl
c00329ba:	74 07                	je     c00329c3 <_svfprintf_r+0x2a3>
c00329bc:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c00329c3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00329c9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00329cf:	89 c8                	mov    %ecx,%eax
c00329d1:	89 f2                	mov    %esi,%edx
c00329d3:	83 c0 02             	add    $0x2,%eax
c00329d6:	83 e2 02             	and    $0x2,%edx
c00329d9:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c00329df:	89 f2                	mov    %esi,%edx
c00329e1:	0f 44 c1             	cmove  %ecx,%eax
c00329e4:	81 e2 84 00 00 00    	and    $0x84,%edx
c00329ea:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00329f0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c00329f6:	0f 85 1c 06 00 00    	jne    c0033018 <_svfprintf_r+0x8f8>
c00329fc:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a02:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a08:	85 f6                	test   %esi,%esi
c0032a0a:	0f 8e 08 06 00 00    	jle    c0033018 <_svfprintf_r+0x8f8>
c0032a10:	83 fe 10             	cmp    $0x10,%esi
c0032a13:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a19:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a1f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a25:	7f 11                	jg     c0032a38 <_svfprintf_r+0x318>
c0032a27:	eb 6b                	jmp    c0032a94 <_svfprintf_r+0x374>
c0032a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032a30:	83 ee 10             	sub    $0x10,%esi
c0032a33:	83 fe 10             	cmp    $0x10,%esi
c0032a36:	7e 5c                	jle    c0032a94 <_svfprintf_r+0x374>
c0032a38:	83 c0 01             	add    $0x1,%eax
c0032a3b:	83 c1 10             	add    $0x10,%ecx
c0032a3e:	c7 07 e4 96 03 c0    	movl   $0xc00396e4,(%edi)
c0032a44:	83 c7 08             	add    $0x8,%edi
c0032a47:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a4e:	83 f8 07             	cmp    $0x7,%eax
c0032a51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a5d:	7e d1                	jle    c0032a30 <_svfprintf_r+0x310>
c0032a5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a62:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a6d:	89 04 24             	mov    %eax,(%esp)
c0032a70:	e8 bb 47 00 00       	call   c0037230 <__ssprint_r>
c0032a75:	85 c0                	test   %eax,%eax
c0032a77:	0f 85 73 fe ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0032a7d:	83 ee 10             	sub    $0x10,%esi
c0032a80:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a86:	83 fe 10             	cmp    $0x10,%esi
c0032a89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a92:	7f a4                	jg     c0032a38 <_svfprintf_r+0x318>
c0032a94:	83 c0 01             	add    $0x1,%eax
c0032a97:	01 f1                	add    %esi,%ecx
c0032a99:	83 f8 07             	cmp    $0x7,%eax
c0032a9c:	c7 07 e4 96 03 c0    	movl   $0xc00396e4,(%edi)
c0032aa2:	89 77 04             	mov    %esi,0x4(%edi)
c0032aa5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032aab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ab1:	0f 8f 16 0e 00 00    	jg     c00338cd <_svfprintf_r+0x11ad>
c0032ab7:	83 c7 08             	add    $0x8,%edi
c0032aba:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032ac1:	e9 58 05 00 00       	jmp    c003301e <_svfprintf_r+0x8fe>
c0032ac6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032acd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032ad3:	8b 45 14             	mov    0x14(%ebp),%eax
c0032ad6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032ad9:	0f 85 fd 04 00 00    	jne    c0032fdc <_svfprintf_r+0x8bc>
c0032adf:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032ae6:	0f 84 f0 04 00 00    	je     c0032fdc <_svfprintf_r+0x8bc>
c0032aec:	0f b7 08             	movzwl (%eax),%ecx
c0032aef:	83 c0 04             	add    $0x4,%eax
c0032af2:	89 45 14             	mov    %eax,0x14(%ebp)
c0032af5:	b8 01 00 00 00       	mov    $0x1,%eax
c0032afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032b00:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032b07:	31 db                	xor    %ebx,%ebx
c0032b09:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0032b0f:	89 f2                	mov    %esi,%edx
c0032b11:	80 e2 7f             	and    $0x7f,%dl
c0032b14:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c0032b1b:	0f 48 d6             	cmovs  %esi,%edx
c0032b1e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032b24:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032b2a:	85 d2                	test   %edx,%edx
c0032b2c:	75 08                	jne    c0032b36 <_svfprintf_r+0x416>
c0032b2e:	85 c9                	test   %ecx,%ecx
c0032b30:	0f 84 ea 08 00 00    	je     c0033420 <_svfprintf_r+0xd00>
c0032b36:	3c 01                	cmp    $0x1,%al
c0032b38:	0f 84 6a 0d 00 00    	je     c00338a8 <_svfprintf_r+0x1188>
c0032b3e:	3c 02                	cmp    $0x2,%al
c0032b40:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032b43:	0f 85 bf 0b 00 00    	jne    c0033708 <_svfprintf_r+0xfe8>
c0032b49:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c0032b4f:	90                   	nop
c0032b50:	89 ca                	mov    %ecx,%edx
c0032b52:	83 e8 01             	sub    $0x1,%eax
c0032b55:	83 e2 0f             	and    $0xf,%edx
c0032b58:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c0032b5c:	c1 e9 04             	shr    $0x4,%ecx
c0032b5f:	85 c9                	test   %ecx,%ecx
c0032b61:	88 10                	mov    %dl,(%eax)
c0032b63:	75 eb                	jne    c0032b50 <_svfprintf_r+0x430>
c0032b65:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032b68:	29 c2                	sub    %eax,%edx
c0032b6a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032b70:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032b76:	66 90                	xchg   %ax,%ax
c0032b78:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032b7e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032b84:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032b8b:	00 00 00 
c0032b8e:	39 c2                	cmp    %eax,%edx
c0032b90:	0f 4d c2             	cmovge %edx,%eax
c0032b93:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032b99:	e9 1a fe ff ff       	jmp    c00329b8 <_svfprintf_r+0x298>
c0032b9e:	84 db                	test   %bl,%bl
c0032ba0:	89 c8                	mov    %ecx,%eax
c0032ba2:	0f 44 de             	cmove  %esi,%ebx
c0032ba5:	e9 a3 fc ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c0032baa:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032bb1:	89 c8                	mov    %ecx,%eax
c0032bb3:	e9 95 fc ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c0032bb8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c0032bbf:	00 00 00 
c0032bc2:	89 c8                	mov    %ecx,%eax
c0032bc4:	e9 84 fc ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c0032bc9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032bcf:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032bd2:	31 ff                	xor    %edi,%edi
c0032bd4:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032bdb:	00 00 00 
c0032bde:	66 90                	xchg   %ax,%ax
c0032be0:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032be3:	83 c1 01             	add    $0x1,%ecx
c0032be6:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032be9:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c0032bed:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032bf0:	83 fa 09             	cmp    $0x9,%edx
c0032bf3:	76 eb                	jbe    c0032be0 <_svfprintf_r+0x4c0>
c0032bf5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c0032bfb:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032c01:	e9 4d fc ff ff       	jmp    c0032853 <_svfprintf_r+0x133>
c0032c06:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032c0d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032c14:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032c1a:	8b 45 14             	mov    0x14(%ebp),%eax
c0032c1d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032c20:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032c26:	0f 85 61 02 00 00    	jne    c0032e8d <_svfprintf_r+0x76d>
c0032c2c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032c33:	0f 84 54 02 00 00    	je     c0032e8d <_svfprintf_r+0x76d>
c0032c39:	0f bf 08             	movswl (%eax),%ecx
c0032c3c:	83 c0 04             	add    $0x4,%eax
c0032c3f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032c42:	85 c9                	test   %ecx,%ecx
c0032c44:	0f 88 53 02 00 00    	js     c0032e9d <_svfprintf_r+0x77d>
c0032c4a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032c51:	b8 01 00 00 00       	mov    $0x1,%eax
c0032c56:	e9 ae fe ff ff       	jmp    c0032b09 <_svfprintf_r+0x3e9>
c0032c5b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032c62:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032c68:	8b 45 14             	mov    0x14(%ebp),%eax
c0032c6b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032c6e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032c74:	0f 84 15 10 00 00    	je     c0033c8f <_svfprintf_r+0x156f>
c0032c7a:	db 28                	fldt   (%eax)
c0032c7c:	83 c0 0c             	add    $0xc,%eax
c0032c7f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032c82:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032c88:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032c8e:	dd 1c 24             	fstpl  (%esp)
c0032c91:	e8 aa 44 00 00       	call   c0037140 <__fpclassifyd>
c0032c96:	83 f8 01             	cmp    $0x1,%eax
c0032c99:	0f 85 82 0f 00 00    	jne    c0033c21 <_svfprintf_r+0x1501>
c0032c9f:	d9 ee                	fldz   
c0032ca1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032ca7:	d9 c9                	fxch   %st(1)
c0032ca9:	df e9                	fucomip %st(1),%st
c0032cab:	dd d8                	fstp   %st(0)
c0032cad:	0f 87 59 15 00 00    	ja     c003420c <_svfprintf_r+0x1aec>
c0032cb3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032cba:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032cc1:	ba 32 95 03 c0       	mov    $0xc0039532,%edx
c0032cc6:	b8 36 95 03 c0       	mov    $0xc0039536,%eax
c0032ccb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032cd2:	00 00 00 
c0032cd5:	0f 4e c2             	cmovle %edx,%eax
c0032cd8:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cde:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032ce5:	ff ff ff 
c0032ce8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0032cef:	00 00 00 
c0032cf2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032cf9:	00 00 00 
c0032cfc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032d03:	00 00 00 
c0032d06:	e9 ad fc ff ff       	jmp    c00329b8 <_svfprintf_r+0x298>
c0032d0b:	8d 41 01             	lea    0x1(%ecx),%eax
c0032d0e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032d14:	0f be 01             	movsbl (%ecx),%eax
c0032d17:	83 f8 2a             	cmp    $0x2a,%eax
c0032d1a:	0f 84 84 18 00 00    	je     c00345a4 <_svfprintf_r+0x1e84>
c0032d20:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032d23:	31 c9                	xor    %ecx,%ecx
c0032d25:	83 fa 09             	cmp    $0x9,%edx
c0032d28:	0f 87 a8 16 00 00    	ja     c00343d6 <_svfprintf_r+0x1cb6>
c0032d2e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032d34:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032d40:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032d43:	83 c7 01             	add    $0x1,%edi
c0032d46:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032d49:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c0032d4d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032d50:	83 fa 09             	cmp    $0x9,%edx
c0032d53:	76 eb                	jbe    c0032d40 <_svfprintf_r+0x620>
c0032d55:	85 c9                	test   %ecx,%ecx
c0032d57:	89 ca                	mov    %ecx,%edx
c0032d59:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0032d5e:	0f 48 d1             	cmovs  %ecx,%edx
c0032d61:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032d67:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c0032d6d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032d73:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032d79:	e9 d5 fa ff ff       	jmp    c0032853 <_svfprintf_r+0x133>
c0032d7e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032d81:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032d84:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032d8b:	8b 08                	mov    (%eax),%ecx
c0032d8d:	83 c0 04             	add    $0x4,%eax
c0032d90:	89 45 14             	mov    %eax,0x14(%ebp)
c0032d93:	b8 02 00 00 00       	mov    $0x2,%eax
c0032d98:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032d9f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032da6:	c7 85 18 ff ff ff 53 	movl   $0xc0039553,-0xe8(%ebp)
c0032dad:	95 03 c0 
c0032db0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032db7:	00 00 00 
c0032dba:	e9 41 fd ff ff       	jmp    c0032b00 <_svfprintf_r+0x3e0>
c0032dbf:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032dc6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032dcc:	8b 45 14             	mov    0x14(%ebp),%eax
c0032dcf:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032dd2:	0f 85 87 00 00 00    	jne    c0032e5f <_svfprintf_r+0x73f>
c0032dd8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032ddf:	74 7e                	je     c0032e5f <_svfprintf_r+0x73f>
c0032de1:	0f b7 08             	movzwl (%eax),%ecx
c0032de4:	83 c0 04             	add    $0x4,%eax
c0032de7:	89 45 14             	mov    %eax,0x14(%ebp)
c0032dea:	31 c0                	xor    %eax,%eax
c0032dec:	e9 0f fd ff ff       	jmp    c0032b00 <_svfprintf_r+0x3e0>
c0032df1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032df8:	89 c8                	mov    %ecx,%eax
c0032dfa:	e9 4e fa ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c0032dff:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032e06:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032e09:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032e0f:	0f 85 97 0b 00 00    	jne    c00339ac <_svfprintf_r+0x128c>
c0032e15:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032e1c:	0f 84 8a 0b 00 00    	je     c00339ac <_svfprintf_r+0x128c>
c0032e22:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e25:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c0032e2c:	8b 00                	mov    (%eax),%eax
c0032e2e:	66 89 10             	mov    %dx,(%eax)
c0032e31:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e34:	83 c0 04             	add    $0x4,%eax
c0032e37:	89 45 14             	mov    %eax,0x14(%ebp)
c0032e3a:	e9 7c f9 ff ff       	jmp    c00327bb <_svfprintf_r+0x9b>
c0032e3f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032e46:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032e4d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032e53:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e56:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032e59:	0f 84 79 ff ff ff    	je     c0032dd8 <_svfprintf_r+0x6b8>
c0032e5f:	8b 08                	mov    (%eax),%ecx
c0032e61:	83 c0 04             	add    $0x4,%eax
c0032e64:	89 45 14             	mov    %eax,0x14(%ebp)
c0032e67:	31 c0                	xor    %eax,%eax
c0032e69:	e9 92 fc ff ff       	jmp    c0032b00 <_svfprintf_r+0x3e0>
c0032e6e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032e75:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032e7b:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e7e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032e81:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032e87:	0f 84 9f fd ff ff    	je     c0032c2c <_svfprintf_r+0x50c>
c0032e8d:	8b 08                	mov    (%eax),%ecx
c0032e8f:	83 c0 04             	add    $0x4,%eax
c0032e92:	89 45 14             	mov    %eax,0x14(%ebp)
c0032e95:	85 c9                	test   %ecx,%ecx
c0032e97:	0f 89 ad fd ff ff    	jns    c0032c4a <_svfprintf_r+0x52a>
c0032e9d:	f7 d9                	neg    %ecx
c0032e9f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032ea4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0032eab:	b8 01 00 00 00       	mov    $0x1,%eax
c0032eb0:	e9 54 fc ff ff       	jmp    c0032b09 <_svfprintf_r+0x3e9>
c0032eb5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c0032ebc:	89 c8                	mov    %ecx,%eax
c0032ebe:	e9 8a f9 ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c0032ec3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032eca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032ed0:	8b 45 14             	mov    0x14(%ebp),%eax
c0032ed3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032ed6:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032edc:	c7 85 18 ff ff ff 53 	movl   $0xc0039553,-0xe8(%ebp)
c0032ee3:	95 03 c0 
c0032ee6:	75 71                	jne    c0032f59 <_svfprintf_r+0x839>
c0032ee8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032eef:	74 68                	je     c0032f59 <_svfprintf_r+0x839>
c0032ef1:	0f b7 08             	movzwl (%eax),%ecx
c0032ef4:	83 c0 04             	add    $0x4,%eax
c0032ef7:	89 45 14             	mov    %eax,0x14(%ebp)
c0032efa:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f01:	b8 02 00 00 00       	mov    $0x2,%eax
c0032f06:	0f 84 f4 fb ff ff    	je     c0032b00 <_svfprintf_r+0x3e0>
c0032f0c:	85 c9                	test   %ecx,%ecx
c0032f0e:	0f 84 ec fb ff ff    	je     c0032b00 <_svfprintf_r+0x3e0>
c0032f14:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c0032f1b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032f22:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032f29:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c0032f2f:	e9 cc fb ff ff       	jmp    c0032b00 <_svfprintf_r+0x3e0>
c0032f34:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032f3b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032f41:	8b 45 14             	mov    0x14(%ebp),%eax
c0032f44:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032f47:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032f4d:	c7 85 18 ff ff ff 42 	movl   $0xc0039542,-0xe8(%ebp)
c0032f54:	95 03 c0 
c0032f57:	74 8f                	je     c0032ee8 <_svfprintf_r+0x7c8>
c0032f59:	8b 08                	mov    (%eax),%ecx
c0032f5b:	83 c0 04             	add    $0x4,%eax
c0032f5e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032f61:	eb 97                	jmp    c0032efa <_svfprintf_r+0x7da>
c0032f63:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032f69:	8b 45 14             	mov    0x14(%ebp),%eax
c0032f6c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032f6f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032f76:	8b 00                	mov    (%eax),%eax
c0032f78:	88 45 80             	mov    %al,-0x80(%ebp)
c0032f7b:	8b 45 14             	mov    0x14(%ebp),%eax
c0032f7e:	83 c0 04             	add    $0x4,%eax
c0032f81:	89 45 14             	mov    %eax,0x14(%ebp)
c0032f84:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032f87:	31 db                	xor    %ebx,%ebx
c0032f89:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032f90:	00 00 00 
c0032f93:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0032f9a:	00 00 00 
c0032f9d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032fa4:	00 00 00 
c0032fa7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032fae:	00 00 00 
c0032fb1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032fb7:	e9 07 fa ff ff       	jmp    c00329c3 <_svfprintf_r+0x2a3>
c0032fbc:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032fc3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032fca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032fd0:	8b 45 14             	mov    0x14(%ebp),%eax
c0032fd3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032fd6:	0f 84 03 fb ff ff    	je     c0032adf <_svfprintf_r+0x3bf>
c0032fdc:	8b 08                	mov    (%eax),%ecx
c0032fde:	83 c0 04             	add    $0x4,%eax
c0032fe1:	89 45 14             	mov    %eax,0x14(%ebp)
c0032fe4:	b8 01 00 00 00       	mov    $0x1,%eax
c0032fe9:	e9 12 fb ff ff       	jmp    c0032b00 <_svfprintf_r+0x3e0>
c0032fee:	85 c0                	test   %eax,%eax
c0032ff0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032ff6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032ff9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032fff:	0f 84 c3 f8 ff ff    	je     c00328c8 <_svfprintf_r+0x1a8>
c0033005:	88 45 80             	mov    %al,-0x80(%ebp)
c0033008:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003300f:	e9 70 ff ff ff       	jmp    c0032f84 <_svfprintf_r+0x864>
c0033014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033018:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003301e:	84 db                	test   %bl,%bl
c0033020:	74 33                	je     c0033055 <_svfprintf_r+0x935>
c0033022:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0033028:	83 c1 01             	add    $0x1,%ecx
c003302b:	89 07                	mov    %eax,(%edi)
c003302d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033033:	83 c7 08             	add    $0x8,%edi
c0033036:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003303d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033043:	83 c0 01             	add    $0x1,%eax
c0033046:	83 f8 07             	cmp    $0x7,%eax
c0033049:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003304f:	0f 8f 7b 06 00 00    	jg     c00336d0 <_svfprintf_r+0xfb0>
c0033055:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003305b:	85 db                	test   %ebx,%ebx
c003305d:	74 33                	je     c0033092 <_svfprintf_r+0x972>
c003305f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0033065:	83 c1 02             	add    $0x2,%ecx
c0033068:	89 07                	mov    %eax,(%edi)
c003306a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033070:	83 c7 08             	add    $0x8,%edi
c0033073:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c003307a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033080:	83 c0 01             	add    $0x1,%eax
c0033083:	83 f8 07             	cmp    $0x7,%eax
c0033086:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003308c:	0f 8f 06 06 00 00    	jg     c0033698 <_svfprintf_r+0xf78>
c0033092:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0033099:	00 00 00 
c003309c:	0f 84 c6 03 00 00    	je     c0033468 <_svfprintf_r+0xd48>
c00330a2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00330a8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00330ae:	85 f6                	test   %esi,%esi
c00330b0:	0f 8e d2 00 00 00    	jle    c0033188 <_svfprintf_r+0xa68>
c00330b6:	83 fe 10             	cmp    $0x10,%esi
c00330b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330bf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00330c5:	7f 11                	jg     c00330d8 <_svfprintf_r+0x9b8>
c00330c7:	eb 6b                	jmp    c0033134 <_svfprintf_r+0xa14>
c00330c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00330d0:	83 ee 10             	sub    $0x10,%esi
c00330d3:	83 fe 10             	cmp    $0x10,%esi
c00330d6:	7e 5c                	jle    c0033134 <_svfprintf_r+0xa14>
c00330d8:	83 c0 01             	add    $0x1,%eax
c00330db:	83 c1 10             	add    $0x10,%ecx
c00330de:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c00330e4:	83 c7 08             	add    $0x8,%edi
c00330e7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330ee:	83 f8 07             	cmp    $0x7,%eax
c00330f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330fd:	7e d1                	jle    c00330d0 <_svfprintf_r+0x9b0>
c00330ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033102:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033106:	89 44 24 04          	mov    %eax,0x4(%esp)
c003310a:	8b 45 08             	mov    0x8(%ebp),%eax
c003310d:	89 04 24             	mov    %eax,(%esp)
c0033110:	e8 1b 41 00 00       	call   c0037230 <__ssprint_r>
c0033115:	85 c0                	test   %eax,%eax
c0033117:	0f 85 d3 f7 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c003311d:	83 ee 10             	sub    $0x10,%esi
c0033120:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033126:	83 fe 10             	cmp    $0x10,%esi
c0033129:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003312f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033132:	7f a4                	jg     c00330d8 <_svfprintf_r+0x9b8>
c0033134:	83 c0 01             	add    $0x1,%eax
c0033137:	01 f1                	add    %esi,%ecx
c0033139:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c003313f:	83 c7 08             	add    $0x8,%edi
c0033142:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033145:	83 f8 07             	cmp    $0x7,%eax
c0033148:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003314e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033154:	7e 32                	jle    c0033188 <_svfprintf_r+0xa68>
c0033156:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003315c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033160:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033163:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033167:	8b 45 08             	mov    0x8(%ebp),%eax
c003316a:	89 04 24             	mov    %eax,(%esp)
c003316d:	e8 be 40 00 00       	call   c0037230 <__ssprint_r>
c0033172:	85 c0                	test   %eax,%eax
c0033174:	0f 85 76 f7 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c003317a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033180:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033183:	90                   	nop
c0033184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033188:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c003318f:	01 00 00 
c0033192:	0f 85 50 01 00 00    	jne    c00332e8 <_svfprintf_r+0xbc8>
c0033198:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003319e:	89 07                	mov    %eax,(%edi)
c00331a0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c00331a6:	01 c1                	add    %eax,%ecx
c00331a8:	89 47 04             	mov    %eax,0x4(%edi)
c00331ab:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00331b7:	83 c0 01             	add    $0x1,%eax
c00331ba:	83 f8 07             	cmp    $0x7,%eax
c00331bd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331c3:	0f 8f 6a 04 00 00    	jg     c0033633 <_svfprintf_r+0xf13>
c00331c9:	83 c7 08             	add    $0x8,%edi
c00331cc:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c00331d3:	0f 84 d7 00 00 00    	je     c00332b0 <_svfprintf_r+0xb90>
c00331d9:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00331df:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00331e5:	85 f6                	test   %esi,%esi
c00331e7:	0f 8e c3 00 00 00    	jle    c00332b0 <_svfprintf_r+0xb90>
c00331ed:	83 fe 10             	cmp    $0x10,%esi
c00331f0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331f6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331fc:	7f 0a                	jg     c0033208 <_svfprintf_r+0xae8>
c00331fe:	eb 64                	jmp    c0033264 <_svfprintf_r+0xb44>
c0033200:	83 ee 10             	sub    $0x10,%esi
c0033203:	83 fe 10             	cmp    $0x10,%esi
c0033206:	7e 5c                	jle    c0033264 <_svfprintf_r+0xb44>
c0033208:	83 c0 01             	add    $0x1,%eax
c003320b:	83 c1 10             	add    $0x10,%ecx
c003320e:	c7 07 e4 96 03 c0    	movl   $0xc00396e4,(%edi)
c0033214:	83 c7 08             	add    $0x8,%edi
c0033217:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003321e:	83 f8 07             	cmp    $0x7,%eax
c0033221:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033227:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003322d:	7e d1                	jle    c0033200 <_svfprintf_r+0xae0>
c003322f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033232:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033236:	89 44 24 04          	mov    %eax,0x4(%esp)
c003323a:	8b 45 08             	mov    0x8(%ebp),%eax
c003323d:	89 04 24             	mov    %eax,(%esp)
c0033240:	e8 eb 3f 00 00       	call   c0037230 <__ssprint_r>
c0033245:	85 c0                	test   %eax,%eax
c0033247:	0f 85 a3 f6 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c003324d:	83 ee 10             	sub    $0x10,%esi
c0033250:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033256:	83 fe 10             	cmp    $0x10,%esi
c0033259:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003325f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033262:	7f a4                	jg     c0033208 <_svfprintf_r+0xae8>
c0033264:	83 c0 01             	add    $0x1,%eax
c0033267:	01 f1                	add    %esi,%ecx
c0033269:	83 f8 07             	cmp    $0x7,%eax
c003326c:	c7 07 e4 96 03 c0    	movl   $0xc00396e4,(%edi)
c0033272:	89 77 04             	mov    %esi,0x4(%edi)
c0033275:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003327b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033281:	7e 2d                	jle    c00332b0 <_svfprintf_r+0xb90>
c0033283:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033289:	89 44 24 08          	mov    %eax,0x8(%esp)
c003328d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033290:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033294:	8b 45 08             	mov    0x8(%ebp),%eax
c0033297:	89 04 24             	mov    %eax,(%esp)
c003329a:	e8 91 3f 00 00       	call   c0037230 <__ssprint_r>
c003329f:	85 c0                	test   %eax,%eax
c00332a1:	0f 85 49 f6 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00332a7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332ad:	8d 76 00             	lea    0x0(%esi),%esi
c00332b0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c00332b6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c00332bc:	39 c2                	cmp    %eax,%edx
c00332be:	0f 4d c2             	cmovge %edx,%eax
c00332c1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c00332c7:	85 c9                	test   %ecx,%ecx
c00332c9:	0f 85 99 03 00 00    	jne    c0033668 <_svfprintf_r+0xf48>
c00332cf:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00332d6:	00 00 00 
c00332d9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332dc:	e9 da f4 ff ff       	jmp    c00327bb <_svfprintf_r+0x9b>
c00332e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00332e8:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c00332ef:	0f 8e 5b 02 00 00    	jle    c0033550 <_svfprintf_r+0xe30>
c00332f5:	d9 ee                	fldz   
c00332f7:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00332fd:	df e9                	fucomip %st(1),%st
c00332ff:	dd d8                	fstp   %st(0)
c0033301:	0f 8a 59 04 00 00    	jp     c0033760 <_svfprintf_r+0x1040>
c0033307:	0f 85 53 04 00 00    	jne    c0033760 <_svfprintf_r+0x1040>
c003330d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033313:	83 c1 01             	add    $0x1,%ecx
c0033316:	83 c7 08             	add    $0x8,%edi
c0033319:	c7 47 f8 6b 95 03 c0 	movl   $0xc003956b,-0x8(%edi)
c0033320:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0033327:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003332d:	83 c0 01             	add    $0x1,%eax
c0033330:	83 f8 07             	cmp    $0x7,%eax
c0033333:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033339:	0f 8f 63 09 00 00    	jg     c0033ca2 <_svfprintf_r+0x1582>
c003333f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0033345:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c003334b:	7c 0d                	jl     c003335a <_svfprintf_r+0xc3a>
c003334d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033354:	0f 84 72 fe ff ff    	je     c00331cc <_svfprintf_r+0xaac>
c003335a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033360:	83 c7 08             	add    $0x8,%edi
c0033363:	89 47 f8             	mov    %eax,-0x8(%edi)
c0033366:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003336c:	89 47 fc             	mov    %eax,-0x4(%edi)
c003336f:	01 c1                	add    %eax,%ecx
c0033371:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033377:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003337d:	83 c0 01             	add    $0x1,%eax
c0033380:	83 f8 07             	cmp    $0x7,%eax
c0033383:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033389:	0f 8f dc 0b 00 00    	jg     c0033f6b <_svfprintf_r+0x184b>
c003338f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0033395:	8d 70 ff             	lea    -0x1(%eax),%esi
c0033398:	85 f6                	test   %esi,%esi
c003339a:	0f 8e 2c fe ff ff    	jle    c00331cc <_svfprintf_r+0xaac>
c00333a0:	83 fe 10             	cmp    $0x10,%esi
c00333a3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333a9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00333af:	7f 13                	jg     c00333c4 <_svfprintf_r+0xca4>
c00333b1:	e9 e6 05 00 00       	jmp    c003399c <_svfprintf_r+0x127c>
c00333b6:	66 90                	xchg   %ax,%ax
c00333b8:	83 ee 10             	sub    $0x10,%esi
c00333bb:	83 fe 10             	cmp    $0x10,%esi
c00333be:	0f 8e d8 05 00 00    	jle    c003399c <_svfprintf_r+0x127c>
c00333c4:	83 c0 01             	add    $0x1,%eax
c00333c7:	83 c1 10             	add    $0x10,%ecx
c00333ca:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c00333d0:	83 c7 08             	add    $0x8,%edi
c00333d3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00333da:	83 f8 07             	cmp    $0x7,%eax
c00333dd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333e3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333e9:	7e cd                	jle    c00333b8 <_svfprintf_r+0xc98>
c00333eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333ee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00333f2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333f6:	8b 45 08             	mov    0x8(%ebp),%eax
c00333f9:	89 04 24             	mov    %eax,(%esp)
c00333fc:	e8 2f 3e 00 00       	call   c0037230 <__ssprint_r>
c0033401:	85 c0                	test   %eax,%eax
c0033403:	0f 85 e7 f4 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033409:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003340f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033412:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033418:	eb 9e                	jmp    c00333b8 <_svfprintf_r+0xc98>
c003341a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033420:	84 c0                	test   %al,%al
c0033422:	75 2c                	jne    c0033450 <_svfprintf_r+0xd30>
c0033424:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003342b:	74 23                	je     c0033450 <_svfprintf_r+0xd30>
c003342d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033433:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0033437:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003343d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033440:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033446:	e9 2d f7 ff ff       	jmp    c0032b78 <_svfprintf_r+0x458>
c003344b:	90                   	nop
c003344c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033450:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033453:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c003345a:	00 00 00 
c003345d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033463:	e9 10 f7 ff ff       	jmp    c0032b78 <_svfprintf_r+0x458>
c0033468:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c003346e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0033474:	85 f6                	test   %esi,%esi
c0033476:	0f 8e 26 fc ff ff    	jle    c00330a2 <_svfprintf_r+0x982>
c003347c:	83 fe 10             	cmp    $0x10,%esi
c003347f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033485:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c003348b:	7f 0b                	jg     c0033498 <_svfprintf_r+0xd78>
c003348d:	eb 65                	jmp    c00334f4 <_svfprintf_r+0xdd4>
c003348f:	90                   	nop
c0033490:	83 ee 10             	sub    $0x10,%esi
c0033493:	83 fe 10             	cmp    $0x10,%esi
c0033496:	7e 5c                	jle    c00334f4 <_svfprintf_r+0xdd4>
c0033498:	83 c0 01             	add    $0x1,%eax
c003349b:	83 c1 10             	add    $0x10,%ecx
c003349e:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c00334a4:	83 c7 08             	add    $0x8,%edi
c00334a7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00334ae:	83 f8 07             	cmp    $0x7,%eax
c00334b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00334b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00334bd:	7e d1                	jle    c0033490 <_svfprintf_r+0xd70>
c00334bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00334c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00334cd:	89 04 24             	mov    %eax,(%esp)
c00334d0:	e8 5b 3d 00 00       	call   c0037230 <__ssprint_r>
c00334d5:	85 c0                	test   %eax,%eax
c00334d7:	0f 85 13 f4 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00334dd:	83 ee 10             	sub    $0x10,%esi
c00334e0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00334e6:	83 fe 10             	cmp    $0x10,%esi
c00334e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334f2:	7f a4                	jg     c0033498 <_svfprintf_r+0xd78>
c00334f4:	83 c0 01             	add    $0x1,%eax
c00334f7:	01 f1                	add    %esi,%ecx
c00334f9:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c00334ff:	83 c7 08             	add    $0x8,%edi
c0033502:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033505:	83 f8 07             	cmp    $0x7,%eax
c0033508:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003350e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033514:	0f 8e 88 fb ff ff    	jle    c00330a2 <_svfprintf_r+0x982>
c003351a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033520:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033524:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033527:	89 44 24 04          	mov    %eax,0x4(%esp)
c003352b:	8b 45 08             	mov    0x8(%ebp),%eax
c003352e:	89 04 24             	mov    %eax,(%esp)
c0033531:	e8 fa 3c 00 00       	call   c0037230 <__ssprint_r>
c0033536:	85 c0                	test   %eax,%eax
c0033538:	0f 85 b2 f3 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c003353e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033544:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033547:	e9 56 fb ff ff       	jmp    c00330a2 <_svfprintf_r+0x982>
c003354c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033550:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0033557:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003355d:	0f 8e df 05 00 00    	jle    c0033b42 <_svfprintf_r+0x1422>
c0033563:	89 07                	mov    %eax,(%edi)
c0033565:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003356b:	8d 51 01             	lea    0x1(%ecx),%edx
c003356e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033575:	83 c7 08             	add    $0x8,%edi
c0033578:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003357e:	83 c0 01             	add    $0x1,%eax
c0033581:	83 f8 07             	cmp    $0x7,%eax
c0033584:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003358a:	0f 8f 59 06 00 00    	jg     c0033be9 <_svfprintf_r+0x14c9>
c0033590:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0033596:	83 c0 01             	add    $0x1,%eax
c0033599:	83 c7 08             	add    $0x8,%edi
c003359c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335a2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c00335a5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c00335ab:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00335ae:	01 da                	add    %ebx,%edx
c00335b0:	83 f8 07             	cmp    $0x7,%eax
c00335b3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335b9:	0f 8f f2 05 00 00    	jg     c0033bb1 <_svfprintf_r+0x1491>
c00335bf:	d9 ee                	fldz   
c00335c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00335c7:	df e9                	fucomip %st(1),%st
c00335c9:	dd d8                	fstp   %st(0)
c00335cb:	7a 06                	jp     c00335d3 <_svfprintf_r+0xeb3>
c00335cd:	0f 84 33 03 00 00    	je     c0033906 <_svfprintf_r+0x11e6>
c00335d3:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c00335d9:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00335df:	83 c1 01             	add    $0x1,%ecx
c00335e2:	89 0f                	mov    %ecx,(%edi)
c00335e4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c00335e7:	89 4f 04             	mov    %ecx,0x4(%edi)
c00335ea:	01 ca                	add    %ecx,%edx
c00335ec:	83 c0 01             	add    $0x1,%eax
c00335ef:	83 f8 07             	cmp    $0x7,%eax
c00335f2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335f8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335fe:	0f 8f 75 05 00 00    	jg     c0033b79 <_svfprintf_r+0x1459>
c0033604:	83 c7 08             	add    $0x8,%edi
c0033607:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c003360d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0033613:	89 0f                	mov    %ecx,(%edi)
c0033615:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033618:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c003361b:	83 c0 01             	add    $0x1,%eax
c003361e:	83 f8 07             	cmp    $0x7,%eax
c0033621:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033627:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003362d:	0f 8e 96 fb ff ff    	jle    c00331c9 <_svfprintf_r+0xaa9>
c0033633:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033639:	89 44 24 08          	mov    %eax,0x8(%esp)
c003363d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033640:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033644:	8b 45 08             	mov    0x8(%ebp),%eax
c0033647:	89 04 24             	mov    %eax,(%esp)
c003364a:	e8 e1 3b 00 00       	call   c0037230 <__ssprint_r>
c003364f:	85 c0                	test   %eax,%eax
c0033651:	0f 85 99 f2 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033657:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003365d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033660:	e9 67 fb ff ff       	jmp    c00331cc <_svfprintf_r+0xaac>
c0033665:	8d 76 00             	lea    0x0(%esi),%esi
c0033668:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003366e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033672:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033675:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033679:	8b 45 08             	mov    0x8(%ebp),%eax
c003367c:	89 04 24             	mov    %eax,(%esp)
c003367f:	e8 ac 3b 00 00       	call   c0037230 <__ssprint_r>
c0033684:	85 c0                	test   %eax,%eax
c0033686:	0f 84 43 fc ff ff    	je     c00332cf <_svfprintf_r+0xbaf>
c003368c:	e9 5f f2 ff ff       	jmp    c00328f0 <_svfprintf_r+0x1d0>
c0033691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0033698:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003369e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00336a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00336ac:	89 04 24             	mov    %eax,(%esp)
c00336af:	e8 7c 3b 00 00       	call   c0037230 <__ssprint_r>
c00336b4:	85 c0                	test   %eax,%eax
c00336b6:	0f 85 34 f2 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00336bc:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00336c2:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336c5:	e9 c8 f9 ff ff       	jmp    c0033092 <_svfprintf_r+0x972>
c00336ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00336d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00336d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00336da:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00336e4:	89 04 24             	mov    %eax,(%esp)
c00336e7:	e8 44 3b 00 00       	call   c0037230 <__ssprint_r>
c00336ec:	85 c0                	test   %eax,%eax
c00336ee:	0f 85 fc f1 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00336f4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00336fa:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336fd:	e9 53 f9 ff ff       	jmp    c0033055 <_svfprintf_r+0x935>
c0033702:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033708:	89 c2                	mov    %eax,%edx
c003370a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033710:	89 c8                	mov    %ecx,%eax
c0033712:	83 ea 01             	sub    $0x1,%edx
c0033715:	83 e0 07             	and    $0x7,%eax
c0033718:	c1 e9 03             	shr    $0x3,%ecx
c003371b:	83 c0 30             	add    $0x30,%eax
c003371e:	85 c9                	test   %ecx,%ecx
c0033720:	88 02                	mov    %al,(%edx)
c0033722:	75 ec                	jne    c0033710 <_svfprintf_r+0xff0>
c0033724:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003372b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0033731:	0f 84 5b 01 00 00    	je     c0033892 <_svfprintf_r+0x1172>
c0033737:	3c 30                	cmp    $0x30,%al
c0033739:	74 0b                	je     c0033746 <_svfprintf_r+0x1026>
c003373b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033742:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033746:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033749:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003374f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033755:	e9 1e f4 ff ff       	jmp    c0032b78 <_svfprintf_r+0x458>
c003375a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033760:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033766:	85 db                	test   %ebx,%ebx
c0033768:	0f 8e 66 05 00 00    	jle    c0033cd4 <_svfprintf_r+0x15b4>
c003376e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033774:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003377a:	01 d0                	add    %edx,%eax
c003377c:	89 c3                	mov    %eax,%ebx
c003377e:	29 d3                	sub    %edx,%ebx
c0033780:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033786:	89 d0                	mov    %edx,%eax
c0033788:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003378e:	39 d3                	cmp    %edx,%ebx
c0033790:	0f 4f da             	cmovg  %edx,%ebx
c0033793:	85 db                	test   %ebx,%ebx
c0033795:	7e 28                	jle    c00337bf <_svfprintf_r+0x109f>
c0033797:	89 07                	mov    %eax,(%edi)
c0033799:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003379f:	01 d9                	add    %ebx,%ecx
c00337a1:	89 5f 04             	mov    %ebx,0x4(%edi)
c00337a4:	83 c7 08             	add    $0x8,%edi
c00337a7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00337ad:	83 c0 01             	add    $0x1,%eax
c00337b0:	83 f8 07             	cmp    $0x7,%eax
c00337b3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337b9:	0f 8f 58 09 00 00    	jg     c0034117 <_svfprintf_r+0x19f7>
c00337bf:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c00337c5:	31 c0                	xor    %eax,%eax
c00337c7:	85 db                	test   %ebx,%ebx
c00337c9:	0f 49 c3             	cmovns %ebx,%eax
c00337cc:	29 c6                	sub    %eax,%esi
c00337ce:	85 f6                	test   %esi,%esi
c00337d0:	0f 8e 40 02 00 00    	jle    c0033a16 <_svfprintf_r+0x12f6>
c00337d6:	83 fe 10             	cmp    $0x10,%esi
c00337d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00337df:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00337e5:	7f 15                	jg     c00337fc <_svfprintf_r+0x10dc>
c00337e7:	e9 db 01 00 00       	jmp    c00339c7 <_svfprintf_r+0x12a7>
c00337ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00337f0:	83 ee 10             	sub    $0x10,%esi
c00337f3:	83 fe 10             	cmp    $0x10,%esi
c00337f6:	0f 8e cb 01 00 00    	jle    c00339c7 <_svfprintf_r+0x12a7>
c00337fc:	83 c0 01             	add    $0x1,%eax
c00337ff:	83 c1 10             	add    $0x10,%ecx
c0033802:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c0033808:	83 c7 08             	add    $0x8,%edi
c003380b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033812:	83 f8 07             	cmp    $0x7,%eax
c0033815:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003381b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033821:	7e cd                	jle    c00337f0 <_svfprintf_r+0x10d0>
c0033823:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033826:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003382a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003382e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033831:	89 04 24             	mov    %eax,(%esp)
c0033834:	e8 f7 39 00 00       	call   c0037230 <__ssprint_r>
c0033839:	85 c0                	test   %eax,%eax
c003383b:	0f 85 af f0 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033841:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033847:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003384a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033850:	eb 9e                	jmp    c00337f0 <_svfprintf_r+0x10d0>
c0033852:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033855:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003385a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033860:	89 c7                	mov    %eax,%edi
c0033862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033868:	89 c8                	mov    %ecx,%eax
c003386a:	83 ef 01             	sub    $0x1,%edi
c003386d:	f7 e6                	mul    %esi
c003386f:	c1 ea 03             	shr    $0x3,%edx
c0033872:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033875:	01 c0                	add    %eax,%eax
c0033877:	29 c1                	sub    %eax,%ecx
c0033879:	83 c1 30             	add    $0x30,%ecx
c003387c:	85 d2                	test   %edx,%edx
c003387e:	88 0f                	mov    %cl,(%edi)
c0033880:	89 d1                	mov    %edx,%ecx
c0033882:	75 e4                	jne    c0033868 <_svfprintf_r+0x1148>
c0033884:	89 fa                	mov    %edi,%edx
c0033886:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003388c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033892:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033895:	29 d0                	sub    %edx,%eax
c0033897:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003389d:	e9 d6 f2 ff ff       	jmp    c0032b78 <_svfprintf_r+0x458>
c00338a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00338a8:	83 f9 09             	cmp    $0x9,%ecx
c00338ab:	77 a5                	ja     c0033852 <_svfprintf_r+0x1132>
c00338ad:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00338b3:	83 c1 30             	add    $0x30,%ecx
c00338b6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00338b9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00338bf:	8d 45 a7             	lea    -0x59(%ebp),%eax
c00338c2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00338c8:	e9 ab f2 ff ff       	jmp    c0032b78 <_svfprintf_r+0x458>
c00338cd:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338d3:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338d7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338da:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338de:	8b 45 08             	mov    0x8(%ebp),%eax
c00338e1:	89 04 24             	mov    %eax,(%esp)
c00338e4:	e8 47 39 00 00       	call   c0037230 <__ssprint_r>
c00338e9:	85 c0                	test   %eax,%eax
c00338eb:	0f 85 ff ef ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00338f1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00338f8:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338fb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033901:	e9 18 f7 ff ff       	jmp    c003301e <_svfprintf_r+0x8fe>
c0033906:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003390c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003390f:	85 f6                	test   %esi,%esi
c0033911:	0f 8e f0 fc ff ff    	jle    c0033607 <_svfprintf_r+0xee7>
c0033917:	83 fe 10             	cmp    $0x10,%esi
c003391a:	7e 70                	jle    c003398c <_svfprintf_r+0x126c>
c003391c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033922:	eb 0c                	jmp    c0033930 <_svfprintf_r+0x1210>
c0033924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033928:	83 ee 10             	sub    $0x10,%esi
c003392b:	83 fe 10             	cmp    $0x10,%esi
c003392e:	7e 5c                	jle    c003398c <_svfprintf_r+0x126c>
c0033930:	83 c0 01             	add    $0x1,%eax
c0033933:	83 c2 10             	add    $0x10,%edx
c0033936:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c003393c:	83 c7 08             	add    $0x8,%edi
c003393f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033946:	83 f8 07             	cmp    $0x7,%eax
c0033949:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003394f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033955:	7e d1                	jle    c0033928 <_svfprintf_r+0x1208>
c0033957:	8b 45 0c             	mov    0xc(%ebp),%eax
c003395a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003395e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033962:	8b 45 08             	mov    0x8(%ebp),%eax
c0033965:	89 04 24             	mov    %eax,(%esp)
c0033968:	e8 c3 38 00 00       	call   c0037230 <__ssprint_r>
c003396d:	85 c0                	test   %eax,%eax
c003396f:	0f 85 7b ef ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033975:	83 ee 10             	sub    $0x10,%esi
c0033978:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003397e:	83 fe 10             	cmp    $0x10,%esi
c0033981:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033987:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003398a:	7f a4                	jg     c0033930 <_svfprintf_r+0x1210>
c003398c:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c0033992:	01 f2                	add    %esi,%edx
c0033994:	89 77 04             	mov    %esi,0x4(%edi)
c0033997:	e9 50 fc ff ff       	jmp    c00335ec <_svfprintf_r+0xecc>
c003399c:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c00339a2:	01 f1                	add    %esi,%ecx
c00339a4:	89 77 04             	mov    %esi,0x4(%edi)
c00339a7:	e9 6f fc ff ff       	jmp    c003361b <_svfprintf_r+0xefb>
c00339ac:	8b 45 14             	mov    0x14(%ebp),%eax
c00339af:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00339b5:	8b 00                	mov    (%eax),%eax
c00339b7:	89 10                	mov    %edx,(%eax)
c00339b9:	8b 45 14             	mov    0x14(%ebp),%eax
c00339bc:	83 c0 04             	add    $0x4,%eax
c00339bf:	89 45 14             	mov    %eax,0x14(%ebp)
c00339c2:	e9 f4 ed ff ff       	jmp    c00327bb <_svfprintf_r+0x9b>
c00339c7:	83 c0 01             	add    $0x1,%eax
c00339ca:	01 f1                	add    %esi,%ecx
c00339cc:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c00339d2:	83 c7 08             	add    $0x8,%edi
c00339d5:	89 77 fc             	mov    %esi,-0x4(%edi)
c00339d8:	83 f8 07             	cmp    $0x7,%eax
c00339db:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00339e1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00339e7:	7e 2d                	jle    c0033a16 <_svfprintf_r+0x12f6>
c00339e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00339fd:	89 04 24             	mov    %eax,(%esp)
c0033a00:	e8 2b 38 00 00       	call   c0037230 <__ssprint_r>
c0033a05:	85 c0                	test   %eax,%eax
c0033a07:	0f 85 e3 ee ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033a0d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a13:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a16:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033a1c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033a22:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033a28:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c0033a2e:	89 c6                	mov    %eax,%esi
c0033a30:	7c 0d                	jl     c0033a3f <_svfprintf_r+0x131f>
c0033a32:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033a39:	0f 84 5e 05 00 00    	je     c0033f9d <_svfprintf_r+0x187d>
c0033a3f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033a45:	89 07                	mov    %eax,(%edi)
c0033a47:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033a4d:	01 c1                	add    %eax,%ecx
c0033a4f:	89 47 04             	mov    %eax,0x4(%edi)
c0033a52:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033a58:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033a5e:	83 c0 01             	add    $0x1,%eax
c0033a61:	83 f8 07             	cmp    $0x7,%eax
c0033a64:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033a6a:	0f 8f d9 06 00 00    	jg     c0034149 <_svfprintf_r+0x1a29>
c0033a70:	83 c7 08             	add    $0x8,%edi
c0033a73:	89 d0                	mov    %edx,%eax
c0033a75:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033a7b:	89 f2                	mov    %esi,%edx
c0033a7d:	29 f3                	sub    %esi,%ebx
c0033a7f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a85:	29 c6                	sub    %eax,%esi
c0033a87:	39 de                	cmp    %ebx,%esi
c0033a89:	0f 4e de             	cmovle %esi,%ebx
c0033a8c:	85 db                	test   %ebx,%ebx
c0033a8e:	7e 29                	jle    c0033ab9 <_svfprintf_r+0x1399>
c0033a90:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033a96:	01 d9                	add    %ebx,%ecx
c0033a98:	83 c7 08             	add    $0x8,%edi
c0033a9b:	89 57 f8             	mov    %edx,-0x8(%edi)
c0033a9e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033aa1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033aa7:	83 c0 01             	add    $0x1,%eax
c0033aaa:	83 f8 07             	cmp    $0x7,%eax
c0033aad:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033ab3:	0f 8f c8 06 00 00    	jg     c0034181 <_svfprintf_r+0x1a61>
c0033ab9:	31 c0                	xor    %eax,%eax
c0033abb:	85 db                	test   %ebx,%ebx
c0033abd:	0f 49 c3             	cmovns %ebx,%eax
c0033ac0:	29 c6                	sub    %eax,%esi
c0033ac2:	85 f6                	test   %esi,%esi
c0033ac4:	0f 8e 02 f7 ff ff    	jle    c00331cc <_svfprintf_r+0xaac>
c0033aca:	83 fe 10             	cmp    $0x10,%esi
c0033acd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033ad3:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033ad9:	7f 11                	jg     c0033aec <_svfprintf_r+0x13cc>
c0033adb:	e9 bc fe ff ff       	jmp    c003399c <_svfprintf_r+0x127c>
c0033ae0:	83 ee 10             	sub    $0x10,%esi
c0033ae3:	83 fe 10             	cmp    $0x10,%esi
c0033ae6:	0f 8e b0 fe ff ff    	jle    c003399c <_svfprintf_r+0x127c>
c0033aec:	83 c0 01             	add    $0x1,%eax
c0033aef:	83 c1 10             	add    $0x10,%ecx
c0033af2:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c0033af8:	83 c7 08             	add    $0x8,%edi
c0033afb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033b02:	83 f8 07             	cmp    $0x7,%eax
c0033b05:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033b0b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033b11:	7e cd                	jle    c0033ae0 <_svfprintf_r+0x13c0>
c0033b13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033b16:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033b1a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b1e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b21:	89 04 24             	mov    %eax,(%esp)
c0033b24:	e8 07 37 00 00       	call   c0037230 <__ssprint_r>
c0033b29:	85 c0                	test   %eax,%eax
c0033b2b:	0f 85 bf ed ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033b31:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033b37:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033b3a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b40:	eb 9e                	jmp    c0033ae0 <_svfprintf_r+0x13c0>
c0033b42:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b49:	0f 85 14 fa ff ff    	jne    c0033563 <_svfprintf_r+0xe43>
c0033b4f:	89 07                	mov    %eax,(%edi)
c0033b51:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b57:	8d 51 01             	lea    0x1(%ecx),%edx
c0033b5a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033b61:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033b67:	83 c0 01             	add    $0x1,%eax
c0033b6a:	83 f8 07             	cmp    $0x7,%eax
c0033b6d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033b73:	0f 8e 8b fa ff ff    	jle    c0033604 <_svfprintf_r+0xee4>
c0033b79:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033b7f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033b83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033b86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b8d:	89 04 24             	mov    %eax,(%esp)
c0033b90:	e8 9b 36 00 00       	call   c0037230 <__ssprint_r>
c0033b95:	85 c0                	test   %eax,%eax
c0033b97:	0f 85 53 ed ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033b9d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033ba3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033ba6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033bac:	e9 56 fa ff ff       	jmp    c0033607 <_svfprintf_r+0xee7>
c0033bb1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033bb7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033bbb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033bbe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033bc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bc5:	89 04 24             	mov    %eax,(%esp)
c0033bc8:	e8 63 36 00 00       	call   c0037230 <__ssprint_r>
c0033bcd:	85 c0                	test   %eax,%eax
c0033bcf:	0f 85 1b ed ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033bd5:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033bdb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033bde:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033be4:	e9 d6 f9 ff ff       	jmp    c00335bf <_svfprintf_r+0xe9f>
c0033be9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033bef:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033bf3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033bf6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033bfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bfd:	89 04 24             	mov    %eax,(%esp)
c0033c00:	e8 2b 36 00 00       	call   c0037230 <__ssprint_r>
c0033c05:	85 c0                	test   %eax,%eax
c0033c07:	0f 85 e3 ec ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033c0d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033c13:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c16:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033c1c:	e9 6f f9 ff ff       	jmp    c0033590 <_svfprintf_r+0xe70>
c0033c21:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033c27:	dd 1c 24             	fstpl  (%esp)
c0033c2a:	e8 11 35 00 00       	call   c0037140 <__fpclassifyd>
c0033c2f:	85 c0                	test   %eax,%eax
c0033c31:	0f 85 a3 01 00 00    	jne    c0033dda <_svfprintf_r+0x16ba>
c0033c37:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0033c3e:	ba 3a 95 03 c0       	mov    $0xc003953a,%edx
c0033c43:	b8 3e 95 03 c0       	mov    $0xc003953e,%eax
c0033c48:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033c4f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033c56:	00 00 00 
c0033c59:	0f 4e c2             	cmovle %edx,%eax
c0033c5c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033c62:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033c69:	ff ff ff 
c0033c6c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033c73:	00 00 00 
c0033c76:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c7d:	00 00 00 
c0033c80:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c87:	00 00 00 
c0033c8a:	e9 29 ed ff ff       	jmp    c00329b8 <_svfprintf_r+0x298>
c0033c8f:	dd 00                	fldl   (%eax)
c0033c91:	83 c0 08             	add    $0x8,%eax
c0033c94:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0033c9a:	89 45 14             	mov    %eax,0x14(%ebp)
c0033c9d:	e9 e6 ef ff ff       	jmp    c0032c88 <_svfprintf_r+0x568>
c0033ca2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ca8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033cac:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033caf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033cb3:	8b 45 08             	mov    0x8(%ebp),%eax
c0033cb6:	89 04 24             	mov    %eax,(%esp)
c0033cb9:	e8 72 35 00 00       	call   c0037230 <__ssprint_r>
c0033cbe:	85 c0                	test   %eax,%eax
c0033cc0:	0f 85 2a ec ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033cc6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033ccc:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033ccf:	e9 6b f6 ff ff       	jmp    c003333f <_svfprintf_r+0xc1f>
c0033cd4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033cda:	83 c1 01             	add    $0x1,%ecx
c0033cdd:	83 c7 08             	add    $0x8,%edi
c0033ce0:	c7 47 f8 6b 95 03 c0 	movl   $0xc003956b,-0x8(%edi)
c0033ce7:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0033cee:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033cf4:	83 c0 01             	add    $0x1,%eax
c0033cf7:	83 f8 07             	cmp    $0x7,%eax
c0033cfa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033d00:	0f 8f ef 02 00 00    	jg     c0033ff5 <_svfprintf_r+0x18d5>
c0033d06:	85 db                	test   %ebx,%ebx
c0033d08:	75 17                	jne    c0033d21 <_svfprintf_r+0x1601>
c0033d0a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033d10:	85 d2                	test   %edx,%edx
c0033d12:	75 0d                	jne    c0033d21 <_svfprintf_r+0x1601>
c0033d14:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d1b:	0f 84 ab f4 ff ff    	je     c00331cc <_svfprintf_r+0xaac>
c0033d21:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033d27:	83 c7 08             	add    $0x8,%edi
c0033d2a:	89 47 f8             	mov    %eax,-0x8(%edi)
c0033d2d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033d33:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033d36:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033d39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033d3f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033d45:	83 c0 01             	add    $0x1,%eax
c0033d48:	83 f8 07             	cmp    $0x7,%eax
c0033d4b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033d51:	0f 8f 60 03 00 00    	jg     c00340b7 <_svfprintf_r+0x1997>
c0033d57:	f7 db                	neg    %ebx
c0033d59:	85 db                	test   %ebx,%ebx
c0033d5b:	0f 8e 21 03 00 00    	jle    c0034082 <_svfprintf_r+0x1962>
c0033d61:	83 fb 10             	cmp    $0x10,%ebx
c0033d64:	0f 8e c3 02 00 00    	jle    c003402d <_svfprintf_r+0x190d>
c0033d6a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033d70:	eb 12                	jmp    c0033d84 <_svfprintf_r+0x1664>
c0033d72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033d78:	83 eb 10             	sub    $0x10,%ebx
c0033d7b:	83 fb 10             	cmp    $0x10,%ebx
c0033d7e:	0f 8e a9 02 00 00    	jle    c003402d <_svfprintf_r+0x190d>
c0033d84:	83 c0 01             	add    $0x1,%eax
c0033d87:	83 c2 10             	add    $0x10,%edx
c0033d8a:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c0033d90:	83 c7 08             	add    $0x8,%edi
c0033d93:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033d9a:	83 f8 07             	cmp    $0x7,%eax
c0033d9d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033da3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033da9:	7e cd                	jle    c0033d78 <_svfprintf_r+0x1658>
c0033dab:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033dae:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033db2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033db6:	8b 45 08             	mov    0x8(%ebp),%eax
c0033db9:	89 04 24             	mov    %eax,(%esp)
c0033dbc:	e8 6f 34 00 00       	call   c0037230 <__ssprint_r>
c0033dc1:	85 c0                	test   %eax,%eax
c0033dc3:	0f 85 27 eb ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033dc9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033dcf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033dd2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033dd8:	eb 9e                	jmp    c0033d78 <_svfprintf_r+0x1658>
c0033dda:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033de0:	83 e3 df             	and    $0xffffffdf,%ebx
c0033de3:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c0033dea:	0f 84 05 03 00 00    	je     c00340f5 <_svfprintf_r+0x19d5>
c0033df0:	83 fb 47             	cmp    $0x47,%ebx
c0033df3:	75 16                	jne    c0033e0b <_svfprintf_r+0x16eb>
c0033df5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033dfb:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e00:	85 d2                	test   %edx,%edx
c0033e02:	0f 45 c2             	cmovne %edx,%eax
c0033e05:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033e0b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033e17:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c0033e1d:	80 cc 01             	or     $0x1,%ah
c0033e20:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033e26:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0033e2c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033e33:	85 c0                	test   %eax,%eax
c0033e35:	0f 88 ba 05 00 00    	js     c00343f5 <_svfprintf_r+0x1cd5>
c0033e3b:	83 fb 46             	cmp    $0x46,%ebx
c0033e3e:	0f 94 c0             	sete   %al
c0033e41:	89 c6                	mov    %eax,%esi
c0033e43:	0f 84 d4 03 00 00    	je     c003421d <_svfprintf_r+0x1afd>
c0033e49:	83 fb 45             	cmp    $0x45,%ebx
c0033e4c:	0f 85 99 05 00 00    	jne    c00343eb <_svfprintf_r+0x1ccb>
c0033e52:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033e58:	dd 54 24 04          	fstl   0x4(%esp)
c0033e5c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033e63:	00 
c0033e64:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033e6a:	8d 70 01             	lea    0x1(%eax),%esi
c0033e6d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033e73:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033e77:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033e7d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033e81:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033e87:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033e8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e8e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033e92:	89 04 24             	mov    %eax,(%esp)
c0033e95:	e8 56 09 00 00       	call   c00347f0 <_dtoa_r>
c0033e9a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033ea0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033ea3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ea9:	d9 ee                	fldz   
c0033eab:	d9 c9                	fxch   %st(1)
c0033ead:	df e9                	fucomip %st(1),%st
c0033eaf:	dd d8                	fstp   %st(0)
c0033eb1:	0f 8a fd 00 00 00    	jp     c0033fb4 <_svfprintf_r+0x1894>
c0033eb7:	89 c8                	mov    %ecx,%eax
c0033eb9:	0f 85 f5 00 00 00    	jne    c0033fb4 <_svfprintf_r+0x1894>
c0033ebf:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033ec5:	83 fb 47             	cmp    $0x47,%ebx
c0033ec8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033ece:	0f 84 1e 04 00 00    	je     c00342f2 <_svfprintf_r+0x1bd2>
c0033ed4:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0033edb:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ee1:	0f 8e 65 04 00 00    	jle    c003434c <_svfprintf_r+0x1c2c>
c0033ee7:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c0033eee:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033ef4:	0f 84 3c 05 00 00    	je     c0034436 <_svfprintf_r+0x1d16>
c0033efa:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033f00:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033f06:	0f 8f f7 04 00 00    	jg     c0034403 <_svfprintf_r+0x1ce3>
c0033f0c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033f12:	83 e0 01             	and    $0x1,%eax
c0033f15:	0f 85 e2 05 00 00    	jne    c00344fd <_svfprintf_r+0x1ddd>
c0033f1b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033f21:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033f28:	00 00 00 
c0033f2b:	85 d2                	test   %edx,%edx
c0033f2d:	0f 49 c2             	cmovns %edx,%eax
c0033f30:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033f36:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c0033f3d:	0f 85 68 03 00 00    	jne    c00342ab <_svfprintf_r+0x1b8b>
c0033f43:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033f49:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033f4f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033f56:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033f5d:	00 00 00 
c0033f60:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033f66:	e9 4d ea ff ff       	jmp    c00329b8 <_svfprintf_r+0x298>
c0033f6b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033f71:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033f75:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033f78:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0033f7f:	89 04 24             	mov    %eax,(%esp)
c0033f82:	e8 a9 32 00 00       	call   c0037230 <__ssprint_r>
c0033f87:	85 c0                	test   %eax,%eax
c0033f89:	0f 85 61 e9 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0033f8f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033f95:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033f98:	e9 f2 f3 ff ff       	jmp    c003338f <_svfprintf_r+0xc6f>
c0033f9d:	89 d0                	mov    %edx,%eax
c0033f9f:	e9 d1 fa ff ff       	jmp    c0033a75 <_svfprintf_r+0x1355>
c0033fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fa8:	8d 50 01             	lea    0x1(%eax),%edx
c0033fab:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033fb1:	c6 00 30             	movb   $0x30,(%eax)
c0033fb4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033fba:	39 c1                	cmp    %eax,%ecx
c0033fbc:	77 ea                	ja     c0033fa8 <_svfprintf_r+0x1888>
c0033fbe:	e9 fc fe ff ff       	jmp    c0033ebf <_svfprintf_r+0x179f>
c0033fc3:	8b 45 08             	mov    0x8(%ebp),%eax
c0033fc6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0033fcd:	00 
c0033fce:	89 04 24             	mov    %eax,(%esp)
c0033fd1:	e8 4a 1b 00 00       	call   c0035b20 <_malloc_r>
c0033fd6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033fd9:	85 c0                	test   %eax,%eax
c0033fdb:	89 02                	mov    %eax,(%edx)
c0033fdd:	89 42 10             	mov    %eax,0x10(%edx)
c0033fe0:	0f 84 15 06 00 00    	je     c00345fb <_svfprintf_r+0x1edb>
c0033fe6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033fe9:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033ff0:	e9 6c e7 ff ff       	jmp    c0032761 <_svfprintf_r+0x41>
c0033ff5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ffb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033fff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034002:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034006:	8b 45 08             	mov    0x8(%ebp),%eax
c0034009:	89 04 24             	mov    %eax,(%esp)
c003400c:	e8 1f 32 00 00       	call   c0037230 <__ssprint_r>
c0034011:	85 c0                	test   %eax,%eax
c0034013:	0f 85 d7 e8 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0034019:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003401f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0034022:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0034028:	e9 d9 fc ff ff       	jmp    c0033d06 <_svfprintf_r+0x15e6>
c003402d:	83 c0 01             	add    $0x1,%eax
c0034030:	01 da                	add    %ebx,%edx
c0034032:	c7 07 d4 96 03 c0    	movl   $0xc00396d4,(%edi)
c0034038:	83 c7 08             	add    $0x8,%edi
c003403b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003403e:	83 f8 07             	cmp    $0x7,%eax
c0034041:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0034047:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003404d:	7e 33                	jle    c0034082 <_svfprintf_r+0x1962>
c003404f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0034055:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034059:	8b 45 0c             	mov    0xc(%ebp),%eax
c003405c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034060:	8b 45 08             	mov    0x8(%ebp),%eax
c0034063:	89 04 24             	mov    %eax,(%esp)
c0034066:	e8 c5 31 00 00       	call   c0037230 <__ssprint_r>
c003406b:	85 c0                	test   %eax,%eax
c003406d:	0f 85 7d e8 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c0034073:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0034079:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003407c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0034082:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0034088:	83 c0 01             	add    $0x1,%eax
c003408b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0034091:	89 1f                	mov    %ebx,(%edi)
c0034093:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0034099:	01 da                	add    %ebx,%edx
c003409b:	83 f8 07             	cmp    $0x7,%eax
c003409e:	89 5f 04             	mov    %ebx,0x4(%edi)
c00340a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00340a7:	0f 8f 86 f5 ff ff    	jg     c0033633 <_svfprintf_r+0xf13>
c00340ad:	83 c7 08             	add    $0x8,%edi
c00340b0:	89 d1                	mov    %edx,%ecx
c00340b2:	e9 15 f1 ff ff       	jmp    c00331cc <_svfprintf_r+0xaac>
c00340b7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00340bd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00340c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00340c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00340cb:	89 04 24             	mov    %eax,(%esp)
c00340ce:	e8 5d 31 00 00       	call   c0037230 <__ssprint_r>
c00340d3:	85 c0                	test   %eax,%eax
c00340d5:	0f 85 15 e8 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00340db:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00340e1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00340e4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00340ea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00340f0:	e9 62 fc ff ff       	jmp    c0033d57 <_svfprintf_r+0x1637>
c00340f5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c00340fc:	00 00 00 
c00340ff:	e9 07 fd ff ff       	jmp    c0033e0b <_svfprintf_r+0x16eb>
c0034104:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003410a:	89 04 24             	mov    %eax,(%esp)
c003410d:	e8 9e 30 00 00       	call   c00371b0 <strlen>
c0034112:	e9 6a e8 ff ff       	jmp    c0032981 <_svfprintf_r+0x261>
c0034117:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003411d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034121:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034124:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034128:	8b 45 08             	mov    0x8(%ebp),%eax
c003412b:	89 04 24             	mov    %eax,(%esp)
c003412e:	e8 fd 30 00 00       	call   c0037230 <__ssprint_r>
c0034133:	85 c0                	test   %eax,%eax
c0034135:	0f 85 b5 e7 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c003413b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0034141:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0034144:	e9 76 f6 ff ff       	jmp    c00337bf <_svfprintf_r+0x109f>
c0034149:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003414f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034153:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034156:	89 44 24 04          	mov    %eax,0x4(%esp)
c003415a:	8b 45 08             	mov    0x8(%ebp),%eax
c003415d:	89 04 24             	mov    %eax,(%esp)
c0034160:	e8 cb 30 00 00       	call   c0037230 <__ssprint_r>
c0034165:	85 c0                	test   %eax,%eax
c0034167:	0f 85 83 e7 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c003416d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0034173:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0034176:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003417c:	e9 f4 f8 ff ff       	jmp    c0033a75 <_svfprintf_r+0x1355>
c0034181:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0034187:	89 44 24 08          	mov    %eax,0x8(%esp)
c003418b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003418e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034192:	8b 45 08             	mov    0x8(%ebp),%eax
c0034195:	89 04 24             	mov    %eax,(%esp)
c0034198:	e8 93 30 00 00       	call   c0037230 <__ssprint_r>
c003419d:	85 c0                	test   %eax,%eax
c003419f:	0f 85 4b e7 ff ff    	jne    c00328f0 <_svfprintf_r+0x1d0>
c00341a5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00341ab:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00341ae:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c00341b4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00341ba:	e9 fa f8 ff ff       	jmp    c0033ab9 <_svfprintf_r+0x1399>
c00341bf:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00341c5:	b0 06                	mov    $0x6,%al
c00341c7:	89 75 14             	mov    %esi,0x14(%ebp)
c00341ca:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00341d1:	00 00 00 
c00341d4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00341db:	00 00 00 
c00341de:	83 fa 06             	cmp    $0x6,%edx
c00341e1:	0f 46 c2             	cmovbe %edx,%eax
c00341e4:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00341ea:	85 c0                	test   %eax,%eax
c00341ec:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00341f2:	c7 85 28 ff ff ff 64 	movl   $0xc0039564,-0xd8(%ebp)
c00341f9:	95 03 c0 
c00341fc:	0f 49 d0             	cmovns %eax,%edx
c00341ff:	31 db                	xor    %ebx,%ebx
c0034201:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0034207:	e9 b7 e7 ff ff       	jmp    c00329c3 <_svfprintf_r+0x2a3>
c003420c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0034213:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0034218:	e9 9d ea ff ff       	jmp    c0032cba <_svfprintf_r+0x59a>
c003421d:	ba 03 00 00 00       	mov    $0x3,%edx
c0034222:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0034228:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c003422c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0034232:	89 44 24 18          	mov    %eax,0x18(%esp)
c0034236:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c003423c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0034240:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0034246:	dd 54 24 04          	fstl   0x4(%esp)
c003424a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003424e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0034254:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034258:	8b 45 08             	mov    0x8(%ebp),%eax
c003425b:	89 04 24             	mov    %eax,(%esp)
c003425e:	e8 8d 05 00 00       	call   c00347f0 <_dtoa_r>
c0034263:	83 fb 47             	cmp    $0x47,%ebx
c0034266:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003426c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0034272:	75 09                	jne    c003427d <_svfprintf_r+0x1b5d>
c0034274:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003427b:	74 5b                	je     c00342d8 <_svfprintf_r+0x1bb8>
c003427d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0034283:	89 f0                	mov    %esi,%eax
c0034285:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c003428b:	01 d1                	add    %edx,%ecx
c003428d:	84 c0                	test   %al,%al
c003428f:	0f 84 14 fc ff ff    	je     c0033ea9 <_svfprintf_r+0x1789>
c0034295:	80 3a 30             	cmpb   $0x30,(%edx)
c0034298:	0f 84 37 02 00 00    	je     c00344d5 <_svfprintf_r+0x1db5>
c003429e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00342a4:	01 c1                	add    %eax,%ecx
c00342a6:	e9 fe fb ff ff       	jmp    c0033ea9 <_svfprintf_r+0x1789>
c00342ab:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00342b1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00342b7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00342bc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00342c3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00342ca:	00 00 00 
c00342cd:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00342d3:	e9 e4 e6 ff ff       	jmp    c00329bc <_svfprintf_r+0x29c>
c00342d8:	dd d8                	fstp   %st(0)
c00342da:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c00342e0:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c00342e6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00342ec:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c00342f2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00342f8:	83 f8 fd             	cmp    $0xfffffffd,%eax
c00342fb:	7c 48                	jl     c0034345 <_svfprintf_r+0x1c25>
c00342fd:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0034303:	7c 40                	jl     c0034345 <_svfprintf_r+0x1c25>
c0034305:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c003430b:	e9 ea fb ff ff       	jmp    c0033efa <_svfprintf_r+0x17da>
c0034310:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0034316:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003431d:	89 75 14             	mov    %esi,0x14(%ebp)
c0034320:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034327:	00 00 00 
c003432a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0034330:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0034336:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003433d:	00 00 00 
c0034340:	e9 73 e6 ff ff       	jmp    c00329b8 <_svfprintf_r+0x298>
c0034345:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c003434c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c003434f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0034356:	85 c9                	test   %ecx,%ecx
c0034358:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c003435e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0034364:	0f 88 2c 02 00 00    	js     c0034596 <_svfprintf_r+0x1e76>
c003436a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0034371:	83 f9 09             	cmp    $0x9,%ecx
c0034374:	0f 8f ea 00 00 00    	jg     c0034464 <_svfprintf_r+0x1d44>
c003437a:	83 c1 30             	add    $0x30,%ecx
c003437d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0034384:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c003438a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0034390:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0034396:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c003439c:	29 d0                	sub    %edx,%eax
c003439e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c00343a4:	89 da                	mov    %ebx,%edx
c00343a6:	01 c2                	add    %eax,%edx
c00343a8:	83 fb 01             	cmp    $0x1,%ebx
c00343ab:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00343b1:	0f 8e 21 02 00 00    	jle    c00345d8 <_svfprintf_r+0x1eb8>
c00343b7:	31 c0                	xor    %eax,%eax
c00343b9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c00343c0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c00343c7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00343ce:	00 00 00 
c00343d1:	e9 60 fb ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c00343d6:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00343dc:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00343e3:	00 00 00 
c00343e6:	e9 68 e4 ff ff       	jmp    c0032853 <_svfprintf_r+0x133>
c00343eb:	ba 02 00 00 00       	mov    $0x2,%edx
c00343f0:	e9 2d fe ff ff       	jmp    c0034222 <_svfprintf_r+0x1b02>
c00343f5:	d9 e0                	fchs   
c00343f7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c00343fe:	e9 38 fa ff ff       	jmp    c0033e3b <_svfprintf_r+0x171b>
c0034403:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0034409:	ba 01 00 00 00       	mov    $0x1,%edx
c003440e:	85 c9                	test   %ecx,%ecx
c0034410:	0f 8e 5a 01 00 00    	jle    c0034570 <_svfprintf_r+0x1e50>
c0034416:	31 c0                	xor    %eax,%eax
c0034418:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c003441e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0034425:	00 00 00 
c0034428:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c003442e:	0f 49 c2             	cmovns %edx,%eax
c0034431:	e9 00 fb ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c0034436:	85 c0                	test   %eax,%eax
c0034438:	0f 8e 06 01 00 00    	jle    c0034544 <_svfprintf_r+0x1e24>
c003443e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0034444:	85 f6                	test   %esi,%esi
c0034446:	0f 85 d4 00 00 00    	jne    c0034520 <_svfprintf_r+0x1e00>
c003444c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0034453:	0f 85 c7 00 00 00    	jne    c0034520 <_svfprintf_r+0x1e00>
c0034459:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003445f:	e9 d2 fa ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c0034464:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c003446a:	89 f3                	mov    %esi,%ebx
c003446c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0034471:	83 eb 01             	sub    $0x1,%ebx
c0034474:	f7 e9                	imul   %ecx
c0034476:	89 c8                	mov    %ecx,%eax
c0034478:	c1 f8 1f             	sar    $0x1f,%eax
c003447b:	c1 fa 02             	sar    $0x2,%edx
c003447e:	29 c2                	sub    %eax,%edx
c0034480:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0034483:	01 c0                	add    %eax,%eax
c0034485:	29 c1                	sub    %eax,%ecx
c0034487:	83 fa 09             	cmp    $0x9,%edx
c003448a:	8d 41 30             	lea    0x30(%ecx),%eax
c003448d:	89 d1                	mov    %edx,%ecx
c003448f:	88 03                	mov    %al,(%ebx)
c0034491:	7f d9                	jg     c003446c <_svfprintf_r+0x1d4c>
c0034493:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034496:	83 c1 30             	add    $0x30,%ecx
c0034499:	39 f0                	cmp    %esi,%eax
c003449b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c003449e:	0f 83 6a 01 00 00    	jae    c003460e <_svfprintf_r+0x1eee>
c00344a4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c00344aa:	eb 07                	jmp    c00344b3 <_svfprintf_r+0x1d93>
c00344ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344b0:	0f b6 08             	movzbl (%eax),%ecx
c00344b3:	83 c0 01             	add    $0x1,%eax
c00344b6:	83 c2 01             	add    $0x1,%edx
c00344b9:	39 f0                	cmp    %esi,%eax
c00344bb:	88 4a ff             	mov    %cl,-0x1(%edx)
c00344be:	75 f0                	jne    c00344b0 <_svfprintf_r+0x1d90>
c00344c0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00344c6:	29 d8                	sub    %ebx,%eax
c00344c8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c00344ce:	01 d0                	add    %edx,%eax
c00344d0:	e9 bb fe ff ff       	jmp    c0034390 <_svfprintf_r+0x1c70>
c00344d5:	d9 ee                	fldz   
c00344d7:	d9 c9                	fxch   %st(1)
c00344d9:	db e9                	fucomi %st(1),%st
c00344db:	dd d9                	fstp   %st(1)
c00344dd:	7a 06                	jp     c00344e5 <_svfprintf_r+0x1dc5>
c00344df:	0f 84 b9 fd ff ff    	je     c003429e <_svfprintf_r+0x1b7e>
c00344e5:	b8 01 00 00 00       	mov    $0x1,%eax
c00344ea:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c00344f0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c00344f6:	01 c1                	add    %eax,%ecx
c00344f8:	e9 ac f9 ff ff       	jmp    c0033ea9 <_svfprintf_r+0x1789>
c00344fd:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034503:	31 c0                	xor    %eax,%eax
c0034505:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c003450c:	00 00 00 
c003450f:	83 c2 01             	add    $0x1,%edx
c0034512:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0034518:	0f 49 c2             	cmovns %edx,%eax
c003451b:	e9 16 fa ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c0034520:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034526:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003452c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0034530:	89 c2                	mov    %eax,%edx
c0034532:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0034538:	31 c0                	xor    %eax,%eax
c003453a:	85 d2                	test   %edx,%edx
c003453c:	0f 49 c2             	cmovns %edx,%eax
c003453f:	e9 f2 f9 ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c0034544:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003454a:	85 db                	test   %ebx,%ebx
c003454c:	75 2f                	jne    c003457d <_svfprintf_r+0x1e5d>
c003454e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0034555:	75 26                	jne    c003457d <_svfprintf_r+0x1e5d>
c0034557:	b8 01 00 00 00       	mov    $0x1,%eax
c003455c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0034563:	00 00 00 
c0034566:	e9 cb f9 ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c003456b:	90                   	nop
c003456c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034570:	b2 02                	mov    $0x2,%dl
c0034572:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0034578:	e9 99 fe ff ff       	jmp    c0034416 <_svfprintf_r+0x1cf6>
c003457d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0034583:	31 c0                	xor    %eax,%eax
c0034585:	83 c2 02             	add    $0x2,%edx
c0034588:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c003458e:	0f 49 c2             	cmovns %edx,%eax
c0034591:	e9 a0 f9 ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c0034596:	f7 d9                	neg    %ecx
c0034598:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c003459f:	e9 cd fd ff ff       	jmp    c0034371 <_svfprintf_r+0x1c51>
c00345a4:	8b 55 14             	mov    0x14(%ebp),%edx
c00345a7:	8b 45 14             	mov    0x14(%ebp),%eax
c00345aa:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00345b0:	8b 12                	mov    (%edx),%edx
c00345b2:	83 c0 04             	add    $0x4,%eax
c00345b5:	89 45 14             	mov    %eax,0x14(%ebp)
c00345b8:	85 d2                	test   %edx,%edx
c00345ba:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00345c0:	0f 89 a9 e2 ff ff    	jns    c003286f <_svfprintf_r+0x14f>
c00345c6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00345cd:	ff ff ff 
c00345d0:	89 c8                	mov    %ecx,%eax
c00345d2:	e9 76 e2 ff ff       	jmp    c003284d <_svfprintf_r+0x12d>
c00345d7:	90                   	nop
c00345d8:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00345de:	83 e0 01             	and    $0x1,%eax
c00345e1:	0f 85 d0 fd ff ff    	jne    c00343b7 <_svfprintf_r+0x1c97>
c00345e7:	85 d2                	test   %edx,%edx
c00345e9:	0f 49 c2             	cmovns %edx,%eax
c00345ec:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00345f3:	00 00 00 
c00345f6:	e9 3b f9 ff ff       	jmp    c0033f36 <_svfprintf_r+0x1816>
c00345fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00345fe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0034604:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0034609:	e9 f5 e2 ff ff       	jmp    c0032903 <_svfprintf_r+0x1e3>
c003460e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0034614:	e9 77 fd ff ff       	jmp    c0034390 <_svfprintf_r+0x1c70>
c0034619:	66 90                	xchg   %ax,%ax
c003461b:	66 90                	xchg   %ax,%ax
c003461d:	66 90                	xchg   %ax,%ax
c003461f:	90                   	nop

c0034620 <quorem>:
c0034620:	55                   	push   %ebp
c0034621:	89 c1                	mov    %eax,%ecx
c0034623:	89 e5                	mov    %esp,%ebp
c0034625:	57                   	push   %edi
c0034626:	89 d7                	mov    %edx,%edi
c0034628:	56                   	push   %esi
c0034629:	53                   	push   %ebx
c003462a:	83 ec 3c             	sub    $0x3c,%esp
c003462d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0034630:	8b 42 10             	mov    0x10(%edx),%eax
c0034633:	3b 41 10             	cmp    0x10(%ecx),%eax
c0034636:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0034639:	89 ca                	mov    %ecx,%edx
c003463b:	0f 8f 9f 01 00 00    	jg     c00347e0 <quorem+0x1c0>
c0034641:	83 e8 01             	sub    $0x1,%eax
c0034644:	83 c7 14             	add    $0x14,%edi
c0034647:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003464a:	c1 e0 02             	shl    $0x2,%eax
c003464d:	83 c2 14             	add    $0x14,%edx
c0034650:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0034653:	01 d0                	add    %edx,%eax
c0034655:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0034658:	8b 13                	mov    (%ebx),%edx
c003465a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c003465d:	8b 00                	mov    (%eax),%eax
c003465f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0034662:	8d 4a 01             	lea    0x1(%edx),%ecx
c0034665:	31 d2                	xor    %edx,%edx
c0034667:	f7 f1                	div    %ecx
c0034669:	85 c0                	test   %eax,%eax
c003466b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003466e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034671:	0f 84 b5 00 00 00    	je     c003472c <quorem+0x10c>
c0034677:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003467a:	31 f6                	xor    %esi,%esi
c003467c:	89 fa                	mov    %edi,%edx
c003467e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0034681:	89 f7                	mov    %esi,%edi
c0034683:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c003468a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034690:	83 c2 04             	add    $0x4,%edx
c0034693:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034696:	83 c0 04             	add    $0x4,%eax
c0034699:	0f b7 ce             	movzwl %si,%ecx
c003469c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c00346a0:	03 4d dc             	add    -0x24(%ebp),%ecx
c00346a3:	c1 ee 10             	shr    $0x10,%esi
c00346a6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c00346aa:	89 cb                	mov    %ecx,%ebx
c00346ac:	0f b7 c9             	movzwl %cx,%ecx
c00346af:	c1 eb 10             	shr    $0x10,%ebx
c00346b2:	29 cf                	sub    %ecx,%edi
c00346b4:	01 f3                	add    %esi,%ebx
c00346b6:	89 de                	mov    %ebx,%esi
c00346b8:	0f b7 db             	movzwl %bx,%ebx
c00346bb:	c1 ee 10             	shr    $0x10,%esi
c00346be:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00346c1:	8b 70 fc             	mov    -0x4(%eax),%esi
c00346c4:	0f b7 ce             	movzwl %si,%ecx
c00346c7:	01 f9                	add    %edi,%ecx
c00346c9:	c1 ee 10             	shr    $0x10,%esi
c00346cc:	29 de                	sub    %ebx,%esi
c00346ce:	89 cb                	mov    %ecx,%ebx
c00346d0:	c1 fb 10             	sar    $0x10,%ebx
c00346d3:	0f b7 c9             	movzwl %cx,%ecx
c00346d6:	01 de                	add    %ebx,%esi
c00346d8:	89 f7                	mov    %esi,%edi
c00346da:	c1 e6 10             	shl    $0x10,%esi
c00346dd:	09 ce                	or     %ecx,%esi
c00346df:	c1 ff 10             	sar    $0x10,%edi
c00346e2:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c00346e5:	89 70 fc             	mov    %esi,-0x4(%eax)
c00346e8:	73 a6                	jae    c0034690 <quorem+0x70>
c00346ea:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c00346ed:	8b 7d c0             	mov    -0x40(%ebp),%edi
c00346f0:	8b 10                	mov    (%eax),%edx
c00346f2:	85 d2                	test   %edx,%edx
c00346f4:	75 36                	jne    c003472c <quorem+0x10c>
c00346f6:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00346f9:	89 c2                	mov    %eax,%edx
c00346fb:	83 e8 04             	sub    $0x4,%eax
c00346fe:	39 c1                	cmp    %eax,%ecx
c0034700:	73 21                	jae    c0034723 <quorem+0x103>
c0034702:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034705:	85 f6                	test   %esi,%esi
c0034707:	75 1a                	jne    c0034723 <quorem+0x103>
c0034709:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003470c:	eb 08                	jmp    c0034716 <quorem+0xf6>
c003470e:	66 90                	xchg   %ax,%ax
c0034710:	8b 18                	mov    (%eax),%ebx
c0034712:	85 db                	test   %ebx,%ebx
c0034714:	75 0a                	jne    c0034720 <quorem+0x100>
c0034716:	83 e8 04             	sub    $0x4,%eax
c0034719:	83 ea 01             	sub    $0x1,%edx
c003471c:	39 c1                	cmp    %eax,%ecx
c003471e:	72 f0                	jb     c0034710 <quorem+0xf0>
c0034720:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034723:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034726:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034729:	89 50 10             	mov    %edx,0x10(%eax)
c003472c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003472f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034733:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034736:	89 04 24             	mov    %eax,(%esp)
c0034739:	e8 a2 23 00 00       	call   c0036ae0 <__mcmp>
c003473e:	85 c0                	test   %eax,%eax
c0034740:	0f 88 8e 00 00 00    	js     c00347d4 <quorem+0x1b4>
c0034746:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034749:	31 f6                	xor    %esi,%esi
c003474b:	83 c0 01             	add    $0x1,%eax
c003474e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034751:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034758:	83 c7 04             	add    $0x4,%edi
c003475b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003475e:	83 c0 04             	add    $0x4,%eax
c0034761:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034764:	0f b7 d1             	movzwl %cx,%edx
c0034767:	29 d6                	sub    %edx,%esi
c0034769:	0f b7 d3             	movzwl %bx,%edx
c003476c:	01 f2                	add    %esi,%edx
c003476e:	c1 e9 10             	shr    $0x10,%ecx
c0034771:	c1 eb 10             	shr    $0x10,%ebx
c0034774:	29 cb                	sub    %ecx,%ebx
c0034776:	89 d1                	mov    %edx,%ecx
c0034778:	c1 f9 10             	sar    $0x10,%ecx
c003477b:	0f b7 d2             	movzwl %dx,%edx
c003477e:	01 cb                	add    %ecx,%ebx
c0034780:	89 de                	mov    %ebx,%esi
c0034782:	c1 e3 10             	shl    $0x10,%ebx
c0034785:	09 d3                	or     %edx,%ebx
c0034787:	c1 fe 10             	sar    $0x10,%esi
c003478a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003478d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034790:	73 c6                	jae    c0034758 <quorem+0x138>
c0034792:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034795:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034798:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003479b:	8b 02                	mov    (%edx),%eax
c003479d:	85 c0                	test   %eax,%eax
c003479f:	75 33                	jne    c00347d4 <quorem+0x1b4>
c00347a1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00347a4:	8d 42 fc             	lea    -0x4(%edx),%eax
c00347a7:	39 c1                	cmp    %eax,%ecx
c00347a9:	73 20                	jae    c00347cb <quorem+0x1ab>
c00347ab:	8b 72 fc             	mov    -0x4(%edx),%esi
c00347ae:	85 f6                	test   %esi,%esi
c00347b0:	75 19                	jne    c00347cb <quorem+0x1ab>
c00347b2:	89 fa                	mov    %edi,%edx
c00347b4:	eb 08                	jmp    c00347be <quorem+0x19e>
c00347b6:	66 90                	xchg   %ax,%ax
c00347b8:	8b 18                	mov    (%eax),%ebx
c00347ba:	85 db                	test   %ebx,%ebx
c00347bc:	75 0a                	jne    c00347c8 <quorem+0x1a8>
c00347be:	83 e8 04             	sub    $0x4,%eax
c00347c1:	83 ea 01             	sub    $0x1,%edx
c00347c4:	39 c1                	cmp    %eax,%ecx
c00347c6:	72 f0                	jb     c00347b8 <quorem+0x198>
c00347c8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00347cb:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00347ce:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00347d1:	89 78 10             	mov    %edi,0x10(%eax)
c00347d4:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00347d7:	83 c4 3c             	add    $0x3c,%esp
c00347da:	5b                   	pop    %ebx
c00347db:	5e                   	pop    %esi
c00347dc:	5f                   	pop    %edi
c00347dd:	5d                   	pop    %ebp
c00347de:	c3                   	ret    
c00347df:	90                   	nop
c00347e0:	83 c4 3c             	add    $0x3c,%esp
c00347e3:	31 c0                	xor    %eax,%eax
c00347e5:	5b                   	pop    %ebx
c00347e6:	5e                   	pop    %esi
c00347e7:	5f                   	pop    %edi
c00347e8:	5d                   	pop    %ebp
c00347e9:	c3                   	ret    
c00347ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00347f0 <_dtoa_r>:
c00347f0:	55                   	push   %ebp
c00347f1:	89 e5                	mov    %esp,%ebp
c00347f3:	57                   	push   %edi
c00347f4:	56                   	push   %esi
c00347f5:	53                   	push   %ebx
c00347f6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c00347fc:	8b 75 08             	mov    0x8(%ebp),%esi
c00347ff:	dd 45 0c             	fldl   0xc(%ebp)
c0034802:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034805:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034808:	8b 46 40             	mov    0x40(%esi),%eax
c003480b:	85 c0                	test   %eax,%eax
c003480d:	74 23                	je     c0034832 <_dtoa_r+0x42>
c003480f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034812:	ba 01 00 00 00       	mov    $0x1,%edx
c0034817:	d3 e2                	shl    %cl,%edx
c0034819:	89 48 04             	mov    %ecx,0x4(%eax)
c003481c:	89 50 08             	mov    %edx,0x8(%eax)
c003481f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034823:	89 34 24             	mov    %esi,(%esp)
c0034826:	e8 95 1b 00 00       	call   c00363c0 <_Bfree>
c003482b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034832:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034835:	85 ff                	test   %edi,%edi
c0034837:	0f 88 3b 02 00 00    	js     c0034a78 <_dtoa_r+0x288>
c003483d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034843:	89 f8                	mov    %edi,%eax
c0034845:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003484a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003484f:	0f 84 e3 01 00 00    	je     c0034a38 <_dtoa_r+0x248>
c0034855:	dd 45 c0             	fldl   -0x40(%ebp)
c0034858:	d9 ee                	fldz   
c003485a:	d9 c9                	fxch   %st(1)
c003485c:	db e9                	fucomi %st(1),%st
c003485e:	dd d9                	fstp   %st(1)
c0034860:	7a 36                	jp     c0034898 <_dtoa_r+0xa8>
c0034862:	75 34                	jne    c0034898 <_dtoa_r+0xa8>
c0034864:	dd d8                	fstp   %st(0)
c0034866:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034869:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003486c:	85 c9                	test   %ecx,%ecx
c003486e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034874:	0f 84 4e 02 00 00    	je     c0034ac8 <_dtoa_r+0x2d8>
c003487a:	8b 45 24             	mov    0x24(%ebp),%eax
c003487d:	c7 00 6c 95 03 c0    	movl   $0xc003956c,(%eax)
c0034883:	b8 6b 95 03 c0       	mov    $0xc003956b,%eax
c0034888:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003488e:	5b                   	pop    %ebx
c003488f:	5e                   	pop    %esi
c0034890:	5f                   	pop    %edi
c0034891:	5d                   	pop    %ebp
c0034892:	c3                   	ret    
c0034893:	90                   	nop
c0034894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034898:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003489b:	89 fb                	mov    %edi,%ebx
c003489d:	89 44 24 10          	mov    %eax,0x10(%esp)
c00348a1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00348a4:	dd 54 24 04          	fstl   0x4(%esp)
c00348a8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00348ac:	dd 5d b8             	fstpl  -0x48(%ebp)
c00348af:	89 34 24             	mov    %esi,(%esp)
c00348b2:	c1 eb 14             	shr    $0x14,%ebx
c00348b5:	e8 76 25 00 00       	call   c0036e30 <__d2b>
c00348ba:	85 db                	test   %ebx,%ebx
c00348bc:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00348bf:	0f 85 db 01 00 00    	jne    c0034aa0 <_dtoa_r+0x2b0>
c00348c5:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00348c8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00348cb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00348ce:	01 c3                	add    %eax,%ebx
c00348d0:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c00348d6:	0f 8c ec 07 00 00    	jl     c00350c8 <_dtoa_r+0x8d8>
c00348dc:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00348df:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c00348e4:	89 f8                	mov    %edi,%eax
c00348e6:	29 d9                	sub    %ebx,%ecx
c00348e8:	d3 e0                	shl    %cl,%eax
c00348ea:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c00348f0:	d3 ea                	shr    %cl,%edx
c00348f2:	09 d0                	or     %edx,%eax
c00348f4:	31 d2                	xor    %edx,%edx
c00348f6:	83 eb 01             	sub    $0x1,%ebx
c00348f9:	89 55 cc             	mov    %edx,-0x34(%ebp)
c00348fc:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c00348ff:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034902:	df 6d c8             	fildll -0x38(%ebp)
c0034905:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034908:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003490f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034916:	dd 45 b8             	fldl   -0x48(%ebp)
c0034919:	d8 25 04 97 03 c0    	fsubs  0xc0039704
c003491f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034922:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034925:	dc 0d 20 97 03 c0    	fmull  0xc0039720
c003492b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003492f:	b4 0c                	mov    $0xc,%ah
c0034931:	dc 05 28 97 03 c0    	faddl  0xc0039728
c0034937:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003493b:	db 45 d4             	fildl  -0x2c(%ebp)
c003493e:	dc 0d 30 97 03 c0    	fmull  0xc0039730
c0034944:	de c1                	faddp  %st,%st(1)
c0034946:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034949:	db 55 b8             	fistl  -0x48(%ebp)
c003494c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003494f:	d9 ee                	fldz   
c0034951:	df e9                	fucomip %st(1),%st
c0034953:	0f 87 27 07 00 00    	ja     c0035080 <_dtoa_r+0x890>
c0034959:	dd d8                	fstp   %st(0)
c003495b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003495f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034966:	77 24                	ja     c003498c <_dtoa_r+0x19c>
c0034968:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003496b:	dd 04 c5 e0 97 03 c0 	fldl   -0x3ffc6820(,%eax,8)
c0034972:	dd 45 c0             	fldl   -0x40(%ebp)
c0034975:	d9 c9                	fxch   %st(1)
c0034977:	df e9                	fucomip %st(1),%st
c0034979:	dd d8                	fstp   %st(0)
c003497b:	0f 86 5f 07 00 00    	jbe    c00350e0 <_dtoa_r+0x8f0>
c0034981:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034985:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003498c:	89 d0                	mov    %edx,%eax
c003498e:	29 d8                	sub    %ebx,%eax
c0034990:	83 e8 01             	sub    $0x1,%eax
c0034993:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003499a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003499d:	0f 88 0d 07 00 00    	js     c00350b0 <_dtoa_r+0x8c0>
c00349a3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00349a6:	85 c0                	test   %eax,%eax
c00349a8:	0f 88 ea 06 00 00    	js     c0035098 <_dtoa_r+0x8a8>
c00349ae:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349b1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00349b4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00349bb:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00349bf:	0f 87 0b 03 00 00    	ja     c0034cd0 <_dtoa_r+0x4e0>
c00349c5:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00349c9:	0f 8e 23 10 00 00    	jle    c00359f2 <_dtoa_r+0x1202>
c00349cf:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c00349d3:	31 c0                	xor    %eax,%eax
c00349d5:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c00349d9:	0f 84 43 0d 00 00    	je     c0035722 <_dtoa_r+0xf32>
c00349df:	0f 8e f3 00 00 00    	jle    c0034ad8 <_dtoa_r+0x2e8>
c00349e5:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c00349e9:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00349f0:	0f 84 f3 00 00 00    	je     c0034ae9 <_dtoa_r+0x2f9>
c00349f6:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00349fa:	0f 85 d7 02 00 00    	jne    c0034cd7 <_dtoa_r+0x4e7>
c0034a00:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034a03:	03 5d 18             	add    0x18(%ebp),%ebx
c0034a06:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034a09:	83 c3 01             	add    $0x1,%ebx
c0034a0c:	83 fb 0e             	cmp    $0xe,%ebx
c0034a0f:	0f 96 c2             	setbe  %dl
c0034a12:	85 db                	test   %ebx,%ebx
c0034a14:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034a17:	0f 8e a7 08 00 00    	jle    c00352c4 <_dtoa_r+0xad4>
c0034a1d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034a20:	83 fb 0e             	cmp    $0xe,%ebx
c0034a23:	89 df                	mov    %ebx,%edi
c0034a25:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034a29:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034a2c:	e9 d6 00 00 00       	jmp    c0034b07 <_dtoa_r+0x317>
c0034a31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034a38:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034a3b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0034a3e:	85 d2                	test   %edx,%edx
c0034a40:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034a46:	b8 fd 96 03 c0       	mov    $0xc00396fd,%eax
c0034a4b:	74 43                	je     c0034a90 <_dtoa_r+0x2a0>
c0034a4d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034a50:	85 db                	test   %ebx,%ebx
c0034a52:	0f 84 30 fe ff ff    	je     c0034888 <_dtoa_r+0x98>
c0034a58:	8b 75 24             	mov    0x24(%ebp),%esi
c0034a5b:	8d 50 08             	lea    0x8(%eax),%edx
c0034a5e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034a62:	8d 48 03             	lea    0x3(%eax),%ecx
c0034a65:	0f 44 d1             	cmove  %ecx,%edx
c0034a68:	89 16                	mov    %edx,(%esi)
c0034a6a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034a70:	5b                   	pop    %ebx
c0034a71:	5e                   	pop    %esi
c0034a72:	5f                   	pop    %edi
c0034a73:	5d                   	pop    %ebp
c0034a74:	c3                   	ret    
c0034a75:	8d 76 00             	lea    0x0(%esi),%esi
c0034a78:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c0034a7e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034a84:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034a87:	e9 b7 fd ff ff       	jmp    c0034843 <_dtoa_r+0x53>
c0034a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a90:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034a96:	ba f4 96 03 c0       	mov    $0xc00396f4,%edx
c0034a9b:	0f 44 c2             	cmove  %edx,%eax
c0034a9e:	eb ad                	jmp    c0034a4d <_dtoa_r+0x25d>
c0034aa0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034aa3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034aa9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0034aac:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034ab3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034ab8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c0034abd:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034ac0:	e9 51 fe ff ff       	jmp    c0034916 <_dtoa_r+0x126>
c0034ac5:	8d 76 00             	lea    0x0(%esi),%esi
c0034ac8:	b8 6b 95 03 c0       	mov    $0xc003956b,%eax
c0034acd:	e9 b6 fd ff ff       	jmp    c0034888 <_dtoa_r+0x98>
c0034ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034ad8:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034adc:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034ae3:	0f 85 ee 01 00 00    	jne    c0034cd7 <_dtoa_r+0x4e7>
c0034ae9:	8b 55 18             	mov    0x18(%ebp),%edx
c0034aec:	85 d2                	test   %edx,%edx
c0034aee:	0f 8e b6 07 00 00    	jle    c00352aa <_dtoa_r+0xaba>
c0034af4:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034af7:	83 ff 0e             	cmp    $0xe,%edi
c0034afa:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034afe:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034b01:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034b04:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034b07:	83 ff 17             	cmp    $0x17,%edi
c0034b0a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b11:	0f 86 e5 0e 00 00    	jbe    c00359fc <_dtoa_r+0x120c>
c0034b17:	b9 01 00 00 00       	mov    $0x1,%ecx
c0034b1c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034b21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034b28:	01 c0                	add    %eax,%eax
c0034b2a:	89 ca                	mov    %ecx,%edx
c0034b2c:	8d 58 14             	lea    0x14(%eax),%ebx
c0034b2f:	39 fb                	cmp    %edi,%ebx
c0034b31:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034b34:	76 f2                	jbe    c0034b28 <_dtoa_r+0x338>
c0034b36:	89 56 44             	mov    %edx,0x44(%esi)
c0034b39:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034b3d:	89 34 24             	mov    %esi,(%esp)
c0034b40:	e8 db 17 00 00       	call   c0036320 <_Balloc>
c0034b45:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034b49:	89 c7                	mov    %eax,%edi
c0034b4b:	89 46 40             	mov    %eax,0x40(%esi)
c0034b4e:	0f 84 bb 01 00 00    	je     c0034d0f <_dtoa_r+0x51f>
c0034b54:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034b57:	dd 45 c0             	fldl   -0x40(%ebp)
c0034b5a:	85 db                	test   %ebx,%ebx
c0034b5c:	0f 8e de 07 00 00    	jle    c0035340 <_dtoa_r+0xb50>
c0034b62:	89 d8                	mov    %ebx,%eax
c0034b64:	83 e0 0f             	and    $0xf,%eax
c0034b67:	dd 04 c5 e0 97 03 c0 	fldl   -0x3ffc6820(,%eax,8)
c0034b6e:	89 d8                	mov    %ebx,%eax
c0034b70:	c1 f8 04             	sar    $0x4,%eax
c0034b73:	a8 10                	test   $0x10,%al
c0034b75:	0f 84 cd 05 00 00    	je     c0035148 <_dtoa_r+0x958>
c0034b7b:	dd 05 c0 97 03 c0    	fldl   0xc00397c0
c0034b81:	83 e0 0f             	and    $0xf,%eax
c0034b84:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034b89:	d8 fa                	fdivr  %st(2),%st
c0034b8b:	85 c0                	test   %eax,%eax
c0034b8d:	74 22                	je     c0034bb1 <_dtoa_r+0x3c1>
c0034b8f:	31 d2                	xor    %edx,%edx
c0034b91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034b98:	a8 01                	test   $0x1,%al
c0034b9a:	74 0e                	je     c0034baa <_dtoa_r+0x3ba>
c0034b9c:	d9 c9                	fxch   %st(1)
c0034b9e:	dc 0c d5 a0 97 03 c0 	fmull  -0x3ffc6860(,%edx,8)
c0034ba5:	d9 c9                	fxch   %st(1)
c0034ba7:	83 c1 01             	add    $0x1,%ecx
c0034baa:	83 c2 01             	add    $0x1,%edx
c0034bad:	d1 f8                	sar    %eax
c0034baf:	75 e7                	jne    c0034b98 <_dtoa_r+0x3a8>
c0034bb1:	de f1                	fdivp  %st,%st(1)
c0034bb3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034bb6:	85 c0                	test   %eax,%eax
c0034bb8:	74 0a                	je     c0034bc4 <_dtoa_r+0x3d4>
c0034bba:	d9 e8                	fld1   
c0034bbc:	df e9                	fucomip %st(1),%st
c0034bbe:	0f 87 92 0b 00 00    	ja     c0035756 <_dtoa_r+0xf66>
c0034bc4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034bc7:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034bca:	db 45 d4             	fildl  -0x2c(%ebp)
c0034bcd:	d8 c9                	fmul   %st(1),%st
c0034bcf:	d8 05 10 97 03 c0    	fadds  0xc0039710
c0034bd5:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034bd8:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034bdf:	85 c0                	test   %eax,%eax
c0034be1:	0f 84 89 05 00 00    	je     c0035170 <_dtoa_r+0x980>
c0034be7:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034bea:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034bed:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034bf0:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034bf3:	85 c0                	test   %eax,%eax
c0034bf5:	0f 84 b5 07 00 00    	je     c00353b0 <_dtoa_r+0xbc0>
c0034bfb:	d9 05 18 97 03 c0    	flds   0xc0039718
c0034c01:	8d 57 01             	lea    0x1(%edi),%edx
c0034c04:	dc 34 cd d8 97 03 c0 	fdivl  -0x3ffc6828(,%ecx,8)
c0034c0b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c0e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c12:	b4 0c                	mov    $0xc,%ah
c0034c14:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c18:	dc 65 c0             	fsubl  -0x40(%ebp)
c0034c1b:	d9 c9                	fxch   %st(1)
c0034c1d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c20:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c23:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c26:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c29:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c2c:	83 c0 30             	add    $0x30,%eax
c0034c2f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c32:	de e9                	fsubrp %st,%st(1)
c0034c34:	d9 c9                	fxch   %st(1)
c0034c36:	88 07                	mov    %al,(%edi)
c0034c38:	db e9                	fucomi %st(1),%st
c0034c3a:	77 7f                	ja     c0034cbb <_dtoa_r+0x4cb>
c0034c3c:	d9 c1                	fld    %st(1)
c0034c3e:	d8 2d 08 97 03 c0    	fsubrs 0xc0039708
c0034c44:	d9 c9                	fxch   %st(1)
c0034c46:	db e9                	fucomi %st(1),%st
c0034c48:	dd d9                	fstp   %st(1)
c0034c4a:	0f 87 33 0c 00 00    	ja     c0035883 <_dtoa_r+0x1093>
c0034c50:	83 f9 01             	cmp    $0x1,%ecx
c0034c53:	0f 8e c4 06 00 00    	jle    c003531d <_dtoa_r+0xb2d>
c0034c59:	01 f9                	add    %edi,%ecx
c0034c5b:	d9 05 0c 97 03 c0    	flds   0xc003970c
c0034c61:	eb 25                	jmp    c0034c88 <_dtoa_r+0x498>
c0034c63:	90                   	nop
c0034c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c68:	d9 c1                	fld    %st(1)
c0034c6a:	d8 2d 08 97 03 c0    	fsubrs 0xc0039708
c0034c70:	d9 c9                	fxch   %st(1)
c0034c72:	db e9                	fucomi %st(1),%st
c0034c74:	dd d9                	fstp   %st(1)
c0034c76:	0f 87 14 0c 00 00    	ja     c0035890 <_dtoa_r+0x10a0>
c0034c7c:	39 ca                	cmp    %ecx,%edx
c0034c7e:	0f 84 a4 06 00 00    	je     c0035328 <_dtoa_r+0xb38>
c0034c84:	d9 c9                	fxch   %st(1)
c0034c86:	d9 ca                	fxch   %st(2)
c0034c88:	dc c9                	fmul   %st,%st(1)
c0034c8a:	83 c2 01             	add    $0x1,%edx
c0034c8d:	dc ca                	fmul   %st,%st(2)
c0034c8f:	d9 ca                	fxch   %st(2)
c0034c91:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c94:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c97:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c9a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c9d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034ca0:	83 c0 30             	add    $0x30,%eax
c0034ca3:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ca6:	de e9                	fsubrp %st,%st(1)
c0034ca8:	d9 c9                	fxch   %st(1)
c0034caa:	88 42 ff             	mov    %al,-0x1(%edx)
c0034cad:	db e9                	fucomi %st(1),%st
c0034caf:	76 b7                	jbe    c0034c68 <_dtoa_r+0x478>
c0034cb1:	dd d8                	fstp   %st(0)
c0034cb3:	dd d8                	fstp   %st(0)
c0034cb5:	dd d8                	fstp   %st(0)
c0034cb7:	dd d8                	fstp   %st(0)
c0034cb9:	eb 06                	jmp    c0034cc1 <_dtoa_r+0x4d1>
c0034cbb:	dd d8                	fstp   %st(0)
c0034cbd:	dd d8                	fstp   %st(0)
c0034cbf:	dd d8                	fstp   %st(0)
c0034cc1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034cc4:	89 fb                	mov    %edi,%ebx
c0034cc6:	89 d7                	mov    %edx,%edi
c0034cc8:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034ccb:	e9 70 03 00 00       	jmp    c0035040 <_dtoa_r+0x850>
c0034cd0:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034cd7:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034cde:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034ce5:	00 
c0034ce6:	89 34 24             	mov    %esi,(%esp)
c0034ce9:	e8 32 16 00 00       	call   c0036320 <_Balloc>
c0034cee:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034cf5:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c0034cfc:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034d03:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c0034d0a:	89 c7                	mov    %eax,%edi
c0034d0c:	89 46 40             	mov    %eax,0x40(%esi)
c0034d0f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034d12:	85 c0                	test   %eax,%eax
c0034d14:	0f 88 2e 01 00 00    	js     c0034e48 <_dtoa_r+0x658>
c0034d1a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c0034d1e:	0f 8f 24 01 00 00    	jg     c0034e48 <_dtoa_r+0x658>
c0034d24:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034d27:	dd 04 c5 e0 97 03 c0 	fldl   -0x3ffc6820(,%eax,8)
c0034d2e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034d31:	85 c0                	test   %eax,%eax
c0034d33:	7f 0e                	jg     c0034d43 <_dtoa_r+0x553>
c0034d35:	8b 45 18             	mov    0x18(%ebp),%eax
c0034d38:	c1 e8 1f             	shr    $0x1f,%eax
c0034d3b:	84 c0                	test   %al,%al
c0034d3d:	0f 85 9d 07 00 00    	jne    c00354e0 <_dtoa_r+0xcf0>
c0034d43:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d46:	d9 c0                	fld    %st(0)
c0034d48:	d8 f2                	fdiv   %st(2),%st
c0034d4a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034d4d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034d51:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034d55:	b4 0c                	mov    $0xc,%ah
c0034d57:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034d5b:	8d 47 01             	lea    0x1(%edi),%eax
c0034d5e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034d61:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034d64:	db 5d d4             	fistpl -0x2c(%ebp)
c0034d67:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034d6a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034d6d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034d70:	8d 42 30             	lea    0x30(%edx),%eax
c0034d73:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d76:	d8 ca                	fmul   %st(2),%st
c0034d78:	88 07                	mov    %al,(%edi)
c0034d7a:	de e9                	fsubrp %st,%st(1)
c0034d7c:	74 66                	je     c0034de4 <_dtoa_r+0x5f4>
c0034d7e:	d8 0d 0c 97 03 c0    	fmuls  0xc003970c
c0034d84:	d9 ee                	fldz   
c0034d86:	d9 c9                	fxch   %st(1)
c0034d88:	db e9                	fucomi %st(1),%st
c0034d8a:	dd d9                	fstp   %st(1)
c0034d8c:	0f 8b 33 0c 00 00    	jnp    c00359c5 <_dtoa_r+0x11d5>
c0034d92:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d95:	8d 47 02             	lea    0x2(%edi),%eax
c0034d98:	d9 05 0c 97 03 c0    	flds   0xc003970c
c0034d9e:	01 fb                	add    %edi,%ebx
c0034da0:	eb 19                	jmp    c0034dbb <_dtoa_r+0x5cb>
c0034da2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034da8:	dc c9                	fmul   %st,%st(1)
c0034daa:	83 c0 01             	add    $0x1,%eax
c0034dad:	d9 ee                	fldz   
c0034daf:	d9 ca                	fxch   %st(2)
c0034db1:	db ea                	fucomi %st(2),%st
c0034db3:	dd da                	fstp   %st(2)
c0034db5:	0f 8b 73 09 00 00    	jnp    c003572e <_dtoa_r+0xf3e>
c0034dbb:	d9 c1                	fld    %st(1)
c0034dbd:	39 d8                	cmp    %ebx,%eax
c0034dbf:	d8 f3                	fdiv   %st(3),%st
c0034dc1:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034dc4:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034dc7:	db 5d d4             	fistpl -0x2c(%ebp)
c0034dca:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034dcd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034dd0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034dd3:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034dd6:	db 45 d4             	fildl  -0x2c(%ebp)
c0034dd9:	d8 cb                	fmul   %st(3),%st
c0034ddb:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034dde:	de ea                	fsubrp %st,%st(2)
c0034de0:	75 c6                	jne    c0034da8 <_dtoa_r+0x5b8>
c0034de2:	dd d8                	fstp   %st(0)
c0034de4:	d8 c0                	fadd   %st(0),%st
c0034de6:	db e9                	fucomi %st(1),%st
c0034de8:	77 1e                	ja     c0034e08 <_dtoa_r+0x618>
c0034dea:	d9 c9                	fxch   %st(1)
c0034dec:	df e9                	fucomip %st(1),%st
c0034dee:	dd d8                	fstp   %st(0)
c0034df0:	0f 8a 44 09 00 00    	jp     c003573a <_dtoa_r+0xf4a>
c0034df6:	0f 85 3e 09 00 00    	jne    c003573a <_dtoa_r+0xf4a>
c0034dfc:	83 e2 01             	and    $0x1,%edx
c0034dff:	90                   	nop
c0034e00:	0f 84 34 09 00 00    	je     c003573a <_dtoa_r+0xf4a>
c0034e06:	eb 04                	jmp    c0034e0c <_dtoa_r+0x61c>
c0034e08:	dd d8                	fstp   %st(0)
c0034e0a:	dd d8                	fstp   %st(0)
c0034e0c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034e0f:	89 fb                	mov    %edi,%ebx
c0034e11:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034e15:	89 cf                	mov    %ecx,%edi
c0034e17:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c0034e1a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c0034e1d:	eb 0f                	jmp    c0034e2e <_dtoa_r+0x63e>
c0034e1f:	90                   	nop
c0034e20:	39 d3                	cmp    %edx,%ebx
c0034e22:	0f 84 75 09 00 00    	je     c003579d <_dtoa_r+0xfad>
c0034e28:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034e2c:	89 d7                	mov    %edx,%edi
c0034e2e:	3c 39                	cmp    $0x39,%al
c0034e30:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034e33:	74 eb                	je     c0034e20 <_dtoa_r+0x630>
c0034e35:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e38:	83 c0 01             	add    $0x1,%eax
c0034e3b:	88 02                	mov    %al,(%edx)
c0034e3d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034e40:	e9 fb 01 00 00       	jmp    c0035040 <_dtoa_r+0x850>
c0034e45:	8d 76 00             	lea    0x0(%esi),%esi
c0034e48:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034e4b:	85 c9                	test   %ecx,%ecx
c0034e4d:	0f 85 9d 02 00 00    	jne    c00350f0 <_dtoa_r+0x900>
c0034e53:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e56:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034e59:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034e60:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e63:	85 c0                	test   %eax,%eax
c0034e65:	7e 14                	jle    c0034e7b <_dtoa_r+0x68b>
c0034e67:	85 db                	test   %ebx,%ebx
c0034e69:	7e 10                	jle    c0034e7b <_dtoa_r+0x68b>
c0034e6b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e6e:	39 d8                	cmp    %ebx,%eax
c0034e70:	0f 4f c3             	cmovg  %ebx,%eax
c0034e73:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034e76:	29 c3                	sub    %eax,%ebx
c0034e78:	29 45 ac             	sub    %eax,-0x54(%ebp)
c0034e7b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034e7e:	85 c0                	test   %eax,%eax
c0034e80:	7e 61                	jle    c0034ee3 <_dtoa_r+0x6f3>
c0034e82:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034e85:	85 c0                	test   %eax,%eax
c0034e87:	0f 84 72 04 00 00    	je     c00352ff <_dtoa_r+0xb0f>
c0034e8d:	85 d2                	test   %edx,%edx
c0034e8f:	7e 47                	jle    c0034ed8 <_dtoa_r+0x6e8>
c0034e91:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e94:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034e98:	89 34 24             	mov    %esi,(%esp)
c0034e9b:	89 55 88             	mov    %edx,-0x78(%ebp)
c0034e9e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ea2:	e8 f9 19 00 00       	call   c00368a0 <__pow5mult>
c0034ea7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034eaa:	89 34 24             	mov    %esi,(%esp)
c0034ead:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034eb1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034eb5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034eb8:	e8 13 18 00 00       	call   c00366d0 <__multiply>
c0034ebd:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034ec0:	89 34 24             	mov    %esi,(%esp)
c0034ec3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034ec7:	89 45 8c             	mov    %eax,-0x74(%ebp)
c0034eca:	e8 f1 14 00 00       	call   c00363c0 <_Bfree>
c0034ecf:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034ed2:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034ed5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ed8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034edb:	29 d0                	sub    %edx,%eax
c0034edd:	0f 85 1f 04 00 00    	jne    c0035302 <_dtoa_r+0xb12>
c0034ee3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034eea:	00 
c0034eeb:	89 34 24             	mov    %esi,(%esp)
c0034eee:	e8 ad 17 00 00       	call   c00366a0 <__i2b>
c0034ef3:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034ef6:	85 c9                	test   %ecx,%ecx
c0034ef8:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034efb:	7e 13                	jle    c0034f10 <_dtoa_r+0x720>
c0034efd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034f01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f05:	89 34 24             	mov    %esi,(%esp)
c0034f08:	e8 93 19 00 00       	call   c00368a0 <__pow5mult>
c0034f0d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f10:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034f14:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034f1b:	0f 8e f7 05 00 00    	jle    c0035518 <_dtoa_r+0xd28>
c0034f21:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034f24:	ba 01 00 00 00       	mov    $0x1,%edx
c0034f29:	85 c0                	test   %eax,%eax
c0034f2b:	0f 85 27 05 00 00    	jne    c0035458 <_dtoa_r+0xc68>
c0034f31:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f34:	01 d0                	add    %edx,%eax
c0034f36:	83 e0 1f             	and    $0x1f,%eax
c0034f39:	89 c2                	mov    %eax,%edx
c0034f3b:	0f 84 57 03 00 00    	je     c0035298 <_dtoa_r+0xaa8>
c0034f41:	b8 20 00 00 00       	mov    $0x20,%eax
c0034f46:	29 d0                	sub    %edx,%eax
c0034f48:	83 f8 04             	cmp    $0x4,%eax
c0034f4b:	0f 8e 8c 0a 00 00    	jle    c00359dd <_dtoa_r+0x11ed>
c0034f51:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034f56:	29 d0                	sub    %edx,%eax
c0034f58:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034f5b:	01 c3                	add    %eax,%ebx
c0034f5d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034f60:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034f63:	85 c0                	test   %eax,%eax
c0034f65:	7e 16                	jle    c0034f7d <_dtoa_r+0x78d>
c0034f67:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034f6b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034f6e:	89 34 24             	mov    %esi,(%esp)
c0034f71:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f75:	e8 46 1a 00 00       	call   c00369c0 <__lshift>
c0034f7a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034f7d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f80:	85 c0                	test   %eax,%eax
c0034f82:	7e 16                	jle    c0034f9a <_dtoa_r+0x7aa>
c0034f84:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034f88:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f8b:	89 34 24             	mov    %esi,(%esp)
c0034f8e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f92:	e8 29 1a 00 00       	call   c00369c0 <__lshift>
c0034f97:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f9a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034f9d:	85 c0                	test   %eax,%eax
c0034f9f:	0f 85 d3 04 00 00    	jne    c0035478 <_dtoa_r+0xc88>
c0034fa5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034fa9:	0f 8e 11 02 00 00    	jle    c00351c0 <_dtoa_r+0x9d0>
c0034faf:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fb2:	85 c0                	test   %eax,%eax
c0034fb4:	0f 8f 06 02 00 00    	jg     c00351c0 <_dtoa_r+0x9d0>
c0034fba:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fbd:	85 c0                	test   %eax,%eax
c0034fbf:	0f 85 e0 01 00 00    	jne    c00351a5 <_dtoa_r+0x9b5>
c0034fc5:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034fc8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034fcf:	00 
c0034fd0:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034fd7:	00 
c0034fd8:	89 34 24             	mov    %esi,(%esp)
c0034fdb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fdf:	e8 fc 13 00 00       	call   c00363e0 <__multadd>
c0034fe4:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fe7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034feb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034fee:	89 04 24             	mov    %eax,(%esp)
c0034ff1:	e8 ea 1a 00 00       	call   c0036ae0 <__mcmp>
c0034ff6:	85 c0                	test   %eax,%eax
c0034ff8:	0f 8e a7 01 00 00    	jle    c00351a5 <_dtoa_r+0x9b5>
c0034ffe:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035002:	89 fb                	mov    %edi,%ebx
c0035004:	83 c7 01             	add    $0x1,%edi
c0035007:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003500b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0035012:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0035015:	89 34 24             	mov    %esi,(%esp)
c0035018:	89 44 24 04          	mov    %eax,0x4(%esp)
c003501c:	e8 9f 13 00 00       	call   c00363c0 <_Bfree>
c0035021:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035024:	85 c0                	test   %eax,%eax
c0035026:	74 18                	je     c0035040 <_dtoa_r+0x850>
c0035028:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003502b:	0f 85 a7 02 00 00    	jne    c00352d8 <_dtoa_r+0xae8>
c0035031:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035034:	89 34 24             	mov    %esi,(%esp)
c0035037:	89 44 24 04          	mov    %eax,0x4(%esp)
c003503b:	e8 80 13 00 00       	call   c00363c0 <_Bfree>
c0035040:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035043:	89 34 24             	mov    %esi,(%esp)
c0035046:	89 44 24 04          	mov    %eax,0x4(%esp)
c003504a:	e8 71 13 00 00       	call   c00363c0 <_Bfree>
c003504f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0035052:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0035055:	c6 07 00             	movb   $0x0,(%edi)
c0035058:	83 c0 01             	add    $0x1,%eax
c003505b:	89 06                	mov    %eax,(%esi)
c003505d:	8b 45 24             	mov    0x24(%ebp),%eax
c0035060:	85 c0                	test   %eax,%eax
c0035062:	0f 84 90 02 00 00    	je     c00352f8 <_dtoa_r+0xb08>
c0035068:	8b 45 24             	mov    0x24(%ebp),%eax
c003506b:	89 38                	mov    %edi,(%eax)
c003506d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0035073:	89 d8                	mov    %ebx,%eax
c0035075:	5b                   	pop    %ebx
c0035076:	5e                   	pop    %esi
c0035077:	5f                   	pop    %edi
c0035078:	5d                   	pop    %ebp
c0035079:	c3                   	ret    
c003507a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035080:	db 45 b8             	fildl  -0x48(%ebp)
c0035083:	df e9                	fucomip %st(1),%st
c0035085:	dd d8                	fstp   %st(0)
c0035087:	7a 06                	jp     c003508f <_dtoa_r+0x89f>
c0035089:	0f 84 cc f8 ff ff    	je     c003495b <_dtoa_r+0x16b>
c003508f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0035093:	e9 c3 f8 ff ff       	jmp    c003495b <_dtoa_r+0x16b>
c0035098:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003509b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003509e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00350a5:	f7 d8                	neg    %eax
c00350a7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00350aa:	e9 0c f9 ff ff       	jmp    c00349bb <_dtoa_r+0x1cb>
c00350af:	90                   	nop
c00350b0:	f7 d8                	neg    %eax
c00350b2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350b5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c00350bc:	e9 e2 f8 ff ff       	jmp    c00349a3 <_dtoa_r+0x1b3>
c00350c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00350c8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00350cb:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c00350d0:	29 d9                	sub    %ebx,%ecx
c00350d2:	d3 e0                	shl    %cl,%eax
c00350d4:	e9 1b f8 ff ff       	jmp    c00348f4 <_dtoa_r+0x104>
c00350d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00350e0:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00350e7:	e9 a0 f8 ff ff       	jmp    c003498c <_dtoa_r+0x19c>
c00350ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350f0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00350f4:	0f 8e fe 06 00 00    	jle    c00357f8 <_dtoa_r+0x1008>
c00350fa:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00350fd:	83 e8 01             	sub    $0x1,%eax
c0035100:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0035103:	0f 8c 3b 06 00 00    	jl     c0035744 <_dtoa_r+0xf54>
c0035109:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003510c:	29 c2                	sub    %eax,%edx
c003510e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0035111:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035114:	85 c9                	test   %ecx,%ecx
c0035116:	89 c8                	mov    %ecx,%eax
c0035118:	0f 88 83 07 00 00    	js     c00358a1 <_dtoa_r+0x10b1>
c003511e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035125:	00 
c0035126:	89 34 24             	mov    %esi,(%esp)
c0035129:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003512c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003512f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0035132:	e8 69 15 00 00       	call   c00366a0 <__i2b>
c0035137:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003513a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003513d:	e9 1e fd ff ff       	jmp    c0034e60 <_dtoa_r+0x670>
c0035142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035148:	d9 c1                	fld    %st(1)
c003514a:	b9 02 00 00 00       	mov    $0x2,%ecx
c003514f:	e9 37 fa ff ff       	jmp    c0034b8b <_dtoa_r+0x39b>
c0035154:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035157:	db 45 d4             	fildl  -0x2c(%ebp)
c003515a:	d8 c9                	fmul   %st(1),%st
c003515c:	d8 05 10 97 03 c0    	fadds  0xc0039710
c0035162:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035165:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003516c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035170:	d8 25 14 97 03 c0    	fsubs  0xc0039714
c0035176:	dd 45 c0             	fldl   -0x40(%ebp)
c0035179:	d9 c9                	fxch   %st(1)
c003517b:	db e9                	fucomi %st(1),%st
c003517d:	0f 87 0d 02 00 00    	ja     c0035390 <_dtoa_r+0xba0>
c0035183:	d9 c9                	fxch   %st(1)
c0035185:	d9 e0                	fchs   
c0035187:	df e9                	fucomip %st(1),%st
c0035189:	dd d8                	fstp   %st(0)
c003518b:	0f 86 a7 01 00 00    	jbe    c0035338 <_dtoa_r+0xb48>
c0035191:	dd d8                	fstp   %st(0)
c0035193:	eb 02                	jmp    c0035197 <_dtoa_r+0x9a7>
c0035195:	dd d8                	fstp   %st(0)
c0035197:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003519e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00351a5:	8b 45 18             	mov    0x18(%ebp),%eax
c00351a8:	89 fb                	mov    %edi,%ebx
c00351aa:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00351b1:	f7 d0                	not    %eax
c00351b3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00351b6:	e9 57 fe ff ff       	jmp    c0035012 <_dtoa_r+0x822>
c00351bb:	90                   	nop
c00351bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00351c0:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351c3:	85 c0                	test   %eax,%eax
c00351c5:	0f 85 c5 03 00 00    	jne    c0035590 <_dtoa_r+0xda0>
c00351cb:	89 75 08             	mov    %esi,0x8(%ebp)
c00351ce:	bb 01 00 00 00       	mov    $0x1,%ebx
c00351d3:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c00351d6:	eb 24                	jmp    c00351fc <_dtoa_r+0xa0c>
c00351d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00351db:	83 c3 01             	add    $0x1,%ebx
c00351de:	89 74 24 04          	mov    %esi,0x4(%esp)
c00351e2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00351e9:	00 
c00351ea:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00351f1:	00 
c00351f2:	89 04 24             	mov    %eax,(%esp)
c00351f5:	e8 e6 11 00 00       	call   c00363e0 <__multadd>
c00351fa:	89 c6                	mov    %eax,%esi
c00351fc:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00351ff:	89 f0                	mov    %esi,%eax
c0035201:	e8 1a f4 ff ff       	call   c0034620 <quorem>
c0035206:	83 c0 30             	add    $0x30,%eax
c0035209:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c003520c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0035210:	7c c6                	jl     c00351d8 <_dtoa_r+0x9e8>
c0035212:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035215:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035218:	ba 01 00 00 00       	mov    $0x1,%edx
c003521d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0035220:	8b 75 08             	mov    0x8(%ebp),%esi
c0035223:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c003522a:	85 c0                	test   %eax,%eax
c003522c:	0f 4f d0             	cmovg  %eax,%edx
c003522f:	01 fa                	add    %edi,%edx
c0035231:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035234:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c003523b:	00 
c003523c:	89 34 24             	mov    %esi,(%esp)
c003523f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0035242:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035246:	e8 75 17 00 00       	call   c00369c0 <__lshift>
c003524b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c003524e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035252:	89 04 24             	mov    %eax,(%esp)
c0035255:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035258:	e8 83 18 00 00       	call   c0036ae0 <__mcmp>
c003525d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0035260:	83 f8 00             	cmp    $0x0,%eax
c0035263:	0f 8e 41 06 00 00    	jle    c00358aa <_dtoa_r+0x10ba>
c0035269:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c003526d:	eb 0f                	jmp    c003527e <_dtoa_r+0xa8e>
c003526f:	90                   	nop
c0035270:	39 c7                	cmp    %eax,%edi
c0035272:	0f 84 70 05 00 00    	je     c00357e8 <_dtoa_r+0xff8>
c0035278:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c003527c:	89 c2                	mov    %eax,%edx
c003527e:	80 f9 39             	cmp    $0x39,%cl
c0035281:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035284:	74 ea                	je     c0035270 <_dtoa_r+0xa80>
c0035286:	83 c1 01             	add    $0x1,%ecx
c0035289:	89 fb                	mov    %edi,%ebx
c003528b:	88 08                	mov    %cl,(%eax)
c003528d:	89 d7                	mov    %edx,%edi
c003528f:	e9 7e fd ff ff       	jmp    c0035012 <_dtoa_r+0x822>
c0035294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035298:	b8 1c 00 00 00       	mov    $0x1c,%eax
c003529d:	01 45 a0             	add    %eax,-0x60(%ebp)
c00352a0:	01 c3                	add    %eax,%ebx
c00352a2:	01 45 ac             	add    %eax,-0x54(%ebp)
c00352a5:	e9 b6 fc ff ff       	jmp    c0034f60 <_dtoa_r+0x770>
c00352aa:	ba 01 00 00 00       	mov    $0x1,%edx
c00352af:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c00352b6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c00352bd:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c00352c4:	21 c2                	and    %eax,%edx
c00352c6:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c00352c9:	31 d2                	xor    %edx,%edx
c00352cb:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00352d2:	e9 62 f8 ff ff       	jmp    c0034b39 <_dtoa_r+0x349>
c00352d7:	90                   	nop
c00352d8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00352db:	85 d2                	test   %edx,%edx
c00352dd:	0f 84 4e fd ff ff    	je     c0035031 <_dtoa_r+0x841>
c00352e3:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00352e6:	89 34 24             	mov    %esi,(%esp)
c00352e9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00352ed:	e8 ce 10 00 00       	call   c00363c0 <_Bfree>
c00352f2:	e9 3a fd ff ff       	jmp    c0035031 <_dtoa_r+0x841>
c00352f7:	90                   	nop
c00352f8:	89 d8                	mov    %ebx,%eax
c00352fa:	e9 89 f5 ff ff       	jmp    c0034888 <_dtoa_r+0x98>
c00352ff:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0035302:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035306:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035309:	89 34 24             	mov    %esi,(%esp)
c003530c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035310:	e8 8b 15 00 00       	call   c00368a0 <__pow5mult>
c0035315:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035318:	e9 c6 fb ff ff       	jmp    c0034ee3 <_dtoa_r+0x6f3>
c003531d:	dd d8                	fstp   %st(0)
c003531f:	dd d8                	fstp   %st(0)
c0035321:	eb 15                	jmp    c0035338 <_dtoa_r+0xb48>
c0035323:	90                   	nop
c0035324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035328:	dd d8                	fstp   %st(0)
c003532a:	dd d8                	fstp   %st(0)
c003532c:	dd d8                	fstp   %st(0)
c003532e:	eb 08                	jmp    c0035338 <_dtoa_r+0xb48>
c0035330:	dd d8                	fstp   %st(0)
c0035332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035338:	dd 5d c0             	fstpl  -0x40(%ebp)
c003533b:	e9 cf f9 ff ff       	jmp    c0034d0f <_dtoa_r+0x51f>
c0035340:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0035343:	f7 d8                	neg    %eax
c0035345:	0f 84 6a 04 00 00    	je     c00357b5 <_dtoa_r+0xfc5>
c003534b:	89 c2                	mov    %eax,%edx
c003534d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0035352:	83 e2 0f             	and    $0xf,%edx
c0035355:	c1 f8 04             	sar    $0x4,%eax
c0035358:	dd 04 d5 e0 97 03 c0 	fldl   -0x3ffc6820(,%edx,8)
c003535f:	85 c0                	test   %eax,%eax
c0035361:	d8 c9                	fmul   %st(1),%st
c0035363:	0f 84 4a f8 ff ff    	je     c0034bb3 <_dtoa_r+0x3c3>
c0035369:	31 d2                	xor    %edx,%edx
c003536b:	90                   	nop
c003536c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035370:	a8 01                	test   $0x1,%al
c0035372:	74 0a                	je     c003537e <_dtoa_r+0xb8e>
c0035374:	dc 0c d5 a0 97 03 c0 	fmull  -0x3ffc6860(,%edx,8)
c003537b:	83 c1 01             	add    $0x1,%ecx
c003537e:	83 c2 01             	add    $0x1,%edx
c0035381:	d1 f8                	sar    %eax
c0035383:	75 eb                	jne    c0035370 <_dtoa_r+0xb80>
c0035385:	e9 29 f8 ff ff       	jmp    c0034bb3 <_dtoa_r+0x3c3>
c003538a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035390:	dd d8                	fstp   %st(0)
c0035392:	dd d8                	fstp   %st(0)
c0035394:	dd d8                	fstp   %st(0)
c0035396:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003539d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00353a4:	e9 55 fc ff ff       	jmp    c0034ffe <_dtoa_r+0x80e>
c00353a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00353b0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00353b3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c00353b6:	dd 45 c0             	fldl   -0x40(%ebp)
c00353b9:	dc 0c c5 e0 97 03 c0 	fmull  -0x3ffc6820(,%eax,8)
c00353c0:	d9 c9                	fxch   %st(1)
c00353c2:	89 45 88             	mov    %eax,-0x78(%ebp)
c00353c5:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00353c9:	8d 57 01             	lea    0x1(%edi),%edx
c00353cc:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c00353cf:	b4 0c                	mov    $0xc,%ah
c00353d1:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00353d5:	d9 6d d0             	fldcw  -0x30(%ebp)
c00353d8:	db 55 d4             	fistl  -0x2c(%ebp)
c00353db:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00353de:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00353e1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00353e4:	83 c0 30             	add    $0x30,%eax
c00353e7:	83 f9 01             	cmp    $0x1,%ecx
c00353ea:	db 45 d4             	fildl  -0x2c(%ebp)
c00353ed:	de e9                	fsubrp %st,%st(1)
c00353ef:	88 07                	mov    %al,(%edi)
c00353f1:	89 d0                	mov    %edx,%eax
c00353f3:	74 37                	je     c003542c <_dtoa_r+0xc3c>
c00353f5:	d9 05 0c 97 03 c0    	flds   0xc003970c
c00353fb:	eb 05                	jmp    c0035402 <_dtoa_r+0xc12>
c00353fd:	8d 76 00             	lea    0x0(%esi),%esi
c0035400:	d9 c9                	fxch   %st(1)
c0035402:	dc c9                	fmul   %st,%st(1)
c0035404:	d9 c9                	fxch   %st(1)
c0035406:	83 c0 01             	add    $0x1,%eax
c0035409:	d9 6d d0             	fldcw  -0x30(%ebp)
c003540c:	db 55 d4             	fistl  -0x2c(%ebp)
c003540f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0035412:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0035415:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035418:	83 c1 30             	add    $0x30,%ecx
c003541b:	39 d8                	cmp    %ebx,%eax
c003541d:	db 45 d4             	fildl  -0x2c(%ebp)
c0035420:	de e9                	fsubrp %st,%st(1)
c0035422:	88 48 ff             	mov    %cl,-0x1(%eax)
c0035425:	75 d9                	jne    c0035400 <_dtoa_r+0xc10>
c0035427:	dd d9                	fstp   %st(1)
c0035429:	03 55 88             	add    -0x78(%ebp),%edx
c003542c:	d9 05 18 97 03 c0    	flds   0xc0039718
c0035432:	d9 c2                	fld    %st(2)
c0035434:	d8 c1                	fadd   %st(1),%st
c0035436:	d9 ca                	fxch   %st(2)
c0035438:	db ea                	fucomi %st(2),%st
c003543a:	dd da                	fstp   %st(2)
c003543c:	0f 86 7f 03 00 00    	jbe    c00357c1 <_dtoa_r+0xfd1>
c0035442:	dd d8                	fstp   %st(0)
c0035444:	dd d8                	fstp   %st(0)
c0035446:	dd d8                	fstp   %st(0)
c0035448:	dd d8                	fstp   %st(0)
c003544a:	89 fb                	mov    %edi,%ebx
c003544c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0035450:	89 d7                	mov    %edx,%edi
c0035452:	e9 d7 f9 ff ff       	jmp    c0034e2e <_dtoa_r+0x63e>
c0035457:	90                   	nop
c0035458:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c003545b:	8b 41 10             	mov    0x10(%ecx),%eax
c003545e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0035462:	89 04 24             	mov    %eax,(%esp)
c0035465:	e8 56 11 00 00       	call   c00365c0 <__hi0bits>
c003546a:	ba 20 00 00 00       	mov    $0x20,%edx
c003546f:	29 c2                	sub    %eax,%edx
c0035471:	e9 bb fa ff ff       	jmp    c0034f31 <_dtoa_r+0x741>
c0035476:	66 90                	xchg   %ax,%ax
c0035478:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003547b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003547f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035482:	89 04 24             	mov    %eax,(%esp)
c0035485:	e8 56 16 00 00       	call   c0036ae0 <__mcmp>
c003548a:	85 c0                	test   %eax,%eax
c003548c:	0f 89 13 fb ff ff    	jns    c0034fa5 <_dtoa_r+0x7b5>
c0035492:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035495:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003549c:	00 
c003549d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00354a4:	00 
c00354a5:	89 34 24             	mov    %esi,(%esp)
c00354a8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00354ac:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00354b0:	e8 2b 0f 00 00       	call   c00363e0 <__multadd>
c00354b5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00354b8:	85 c9                	test   %ecx,%ecx
c00354ba:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00354bd:	0f 85 8d 00 00 00    	jne    c0035550 <_dtoa_r+0xd60>
c00354c3:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c00354c7:	8b 45 90             	mov    -0x70(%ebp),%eax
c00354ca:	7f 0a                	jg     c00354d6 <_dtoa_r+0xce6>
c00354cc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00354d0:	0f 8f ff 04 00 00    	jg     c00359d5 <_dtoa_r+0x11e5>
c00354d6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00354d9:	e9 ed fc ff ff       	jmp    c00351cb <_dtoa_r+0x9db>
c00354de:	66 90                	xchg   %ax,%ax
c00354e0:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00354e3:	85 db                	test   %ebx,%ebx
c00354e5:	0f 85 aa fc ff ff    	jne    c0035195 <_dtoa_r+0x9a5>
c00354eb:	d8 0d 14 97 03 c0    	fmuls  0xc0039714
c00354f1:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00354f8:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00354ff:	dd 45 c0             	fldl   -0x40(%ebp)
c0035502:	d9 c9                	fxch   %st(1)
c0035504:	df e9                	fucomip %st(1),%st
c0035506:	dd d8                	fstp   %st(0)
c0035508:	0f 83 97 fc ff ff    	jae    c00351a5 <_dtoa_r+0x9b5>
c003550e:	e9 eb fa ff ff       	jmp    c0034ffe <_dtoa_r+0x80e>
c0035513:	90                   	nop
c0035514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035518:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003551b:	85 c0                	test   %eax,%eax
c003551d:	0f 85 fe f9 ff ff    	jne    c0034f21 <_dtoa_r+0x731>
c0035523:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0035526:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c003552b:	0f 85 f0 f9 ff ff    	jne    c0034f21 <_dtoa_r+0x731>
c0035531:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0035536:	0f 84 e5 f9 ff ff    	je     c0034f21 <_dtoa_r+0x731>
c003553c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0035540:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0035544:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c003554b:	e9 d1 f9 ff ff       	jmp    c0034f21 <_dtoa_r+0x731>
c0035550:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035553:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003555a:	00 
c003555b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035562:	00 
c0035563:	89 34 24             	mov    %esi,(%esp)
c0035566:	89 44 24 04          	mov    %eax,0x4(%esp)
c003556a:	e8 71 0e 00 00       	call   c00363e0 <__multadd>
c003556f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0035572:	85 d2                	test   %edx,%edx
c0035574:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035577:	8b 45 90             	mov    -0x70(%ebp),%eax
c003557a:	7f 0a                	jg     c0035586 <_dtoa_r+0xd96>
c003557c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0035580:	0f 8f 4f 04 00 00    	jg     c00359d5 <_dtoa_r+0x11e5>
c0035586:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035590:	85 db                	test   %ebx,%ebx
c0035592:	7e 16                	jle    c00355aa <_dtoa_r+0xdba>
c0035594:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035597:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003559b:	89 34 24             	mov    %esi,(%esp)
c003559e:	89 44 24 04          	mov    %eax,0x4(%esp)
c00355a2:	e8 19 14 00 00       	call   c00369c0 <__lshift>
c00355a7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00355aa:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c00355ad:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00355b0:	85 db                	test   %ebx,%ebx
c00355b2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00355b5:	0f 85 11 03 00 00    	jne    c00358cc <_dtoa_r+0x10dc>
c00355bb:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00355be:	8d 5f 01             	lea    0x1(%edi),%ebx
c00355c1:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c00355c4:	01 f8                	add    %edi,%eax
c00355c6:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c00355c9:	89 45 90             	mov    %eax,-0x70(%ebp)
c00355cc:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00355cf:	83 e0 01             	and    $0x1,%eax
c00355d2:	89 45 9c             	mov    %eax,-0x64(%ebp)
c00355d5:	eb 2e                	jmp    c0035605 <_dtoa_r+0xe15>
c00355d7:	90                   	nop
c00355d8:	e8 03 0e 00 00       	call   c00363e0 <__multadd>
c00355dd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00355e4:	00 
c00355e5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00355ec:	00 
c00355ed:	89 34 24             	mov    %esi,(%esp)
c00355f0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00355f3:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00355f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00355fa:	e8 e1 0d 00 00       	call   c00363e0 <__multadd>
c00355ff:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035602:	83 c3 01             	add    $0x1,%ebx
c0035605:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035608:	8d 43 ff             	lea    -0x1(%ebx),%eax
c003560b:	89 45 98             	mov    %eax,-0x68(%ebp)
c003560e:	89 f8                	mov    %edi,%eax
c0035610:	e8 0b f0 ff ff       	call   c0034620 <quorem>
c0035615:	89 3c 24             	mov    %edi,(%esp)
c0035618:	8d 48 30             	lea    0x30(%eax),%ecx
c003561b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c003561e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0035621:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0035624:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035628:	e8 b3 14 00 00       	call   c0036ae0 <__mcmp>
c003562d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0035630:	89 34 24             	mov    %esi,(%esp)
c0035633:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0035637:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003563a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003563d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035641:	e8 ea 14 00 00       	call   c0036b30 <__mdiff>
c0035646:	8b 48 0c             	mov    0xc(%eax),%ecx
c0035649:	89 c2                	mov    %eax,%edx
c003564b:	85 c9                	test   %ecx,%ecx
c003564d:	0f 85 c5 00 00 00    	jne    c0035718 <_dtoa_r+0xf28>
c0035653:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035657:	89 3c 24             	mov    %edi,(%esp)
c003565a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c003565d:	e8 7e 14 00 00       	call   c0036ae0 <__mcmp>
c0035662:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0035665:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035669:	89 34 24             	mov    %esi,(%esp)
c003566c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c003566f:	e8 4c 0d 00 00       	call   c00363c0 <_Bfree>
c0035674:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035677:	89 c1                	mov    %eax,%ecx
c0035679:	0b 4d 14             	or     0x14(%ebp),%ecx
c003567c:	75 0b                	jne    c0035689 <_dtoa_r+0xe99>
c003567e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0035681:	85 d2                	test   %edx,%edx
c0035683:	0f 84 fb 02 00 00    	je     c0035984 <_dtoa_r+0x1194>
c0035689:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003568c:	85 d2                	test   %edx,%edx
c003568e:	0f 88 7f 01 00 00    	js     c0035813 <_dtoa_r+0x1023>
c0035694:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035697:	0b 4d 14             	or     0x14(%ebp),%ecx
c003569a:	75 0b                	jne    c00356a7 <_dtoa_r+0xeb7>
c003569c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c003569f:	85 c9                	test   %ecx,%ecx
c00356a1:	0f 84 6c 01 00 00    	je     c0035813 <_dtoa_r+0x1023>
c00356a7:	85 c0                	test   %eax,%eax
c00356a9:	0f 8f 82 02 00 00    	jg     c0035931 <_dtoa_r+0x1141>
c00356af:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00356b3:	89 da                	mov    %ebx,%edx
c00356b5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c00356b8:	88 43 ff             	mov    %al,-0x1(%ebx)
c00356bb:	0f 84 8d 02 00 00    	je     c003594e <_dtoa_r+0x115e>
c00356c1:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00356c5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00356cc:	00 
c00356cd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00356d4:	00 
c00356d5:	89 34 24             	mov    %esi,(%esp)
c00356d8:	e8 03 0d 00 00       	call   c00363e0 <__multadd>
c00356dd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00356e4:	00 
c00356e5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00356ec:	00 
c00356ed:	89 34 24             	mov    %esi,(%esp)
c00356f0:	89 c7                	mov    %eax,%edi
c00356f2:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00356f5:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c00356f8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00356fb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00356ff:	0f 85 d3 fe ff ff    	jne    c00355d8 <_dtoa_r+0xde8>
c0035705:	e8 d6 0c 00 00       	call   c00363e0 <__multadd>
c003570a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003570d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035710:	e9 ed fe ff ff       	jmp    c0035602 <_dtoa_r+0xe12>
c0035715:	8d 76 00             	lea    0x0(%esi),%esi
c0035718:	b8 01 00 00 00       	mov    $0x1,%eax
c003571d:	e9 43 ff ff ff       	jmp    c0035665 <_dtoa_r+0xe75>
c0035722:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035729:	e9 d2 f2 ff ff       	jmp    c0034a00 <_dtoa_r+0x210>
c003572e:	0f 85 87 f6 ff ff    	jne    c0034dbb <_dtoa_r+0x5cb>
c0035734:	dd d8                	fstp   %st(0)
c0035736:	dd d8                	fstp   %st(0)
c0035738:	dd d8                	fstp   %st(0)
c003573a:	89 fb                	mov    %edi,%ebx
c003573c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c003573f:	e9 fc f8 ff ff       	jmp    c0035040 <_dtoa_r+0x850>
c0035744:	89 c2                	mov    %eax,%edx
c0035746:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035749:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003574c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003574f:	31 d2                	xor    %edx,%edx
c0035751:	e9 b8 f9 ff ff       	jmp    c003510e <_dtoa_r+0x91e>
c0035756:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035759:	85 c0                	test   %eax,%eax
c003575b:	0f 84 f3 f9 ff ff    	je     c0035154 <_dtoa_r+0x964>
c0035761:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035764:	85 c0                	test   %eax,%eax
c0035766:	0f 8e c4 fb ff ff    	jle    c0035330 <_dtoa_r+0xb40>
c003576c:	d8 0d 0c 97 03 c0    	fmuls  0xc003970c
c0035772:	83 c1 01             	add    $0x1,%ecx
c0035775:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035778:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003577b:	89 c1                	mov    %eax,%ecx
c003577d:	83 eb 01             	sub    $0x1,%ebx
c0035780:	db 45 d4             	fildl  -0x2c(%ebp)
c0035783:	d8 c9                	fmul   %st(1),%st
c0035785:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035788:	d8 05 10 97 03 c0    	fadds  0xc0039710
c003578e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035791:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035798:	e9 53 f4 ff ff       	jmp    c0034bf0 <_dtoa_r+0x400>
c003579d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00357a0:	c6 03 30             	movb   $0x30,(%ebx)
c00357a3:	83 c0 01             	add    $0x1,%eax
c00357a6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00357a9:	b8 31 00 00 00       	mov    $0x31,%eax
c00357ae:	88 02                	mov    %al,(%edx)
c00357b0:	e9 8b f8 ff ff       	jmp    c0035040 <_dtoa_r+0x850>
c00357b5:	d9 c0                	fld    %st(0)
c00357b7:	b9 02 00 00 00       	mov    $0x2,%ecx
c00357bc:	e9 f2 f3 ff ff       	jmp    c0034bb3 <_dtoa_r+0x3c3>
c00357c1:	de e2                	fsubp  %st,%st(2)
c00357c3:	d9 c9                	fxch   %st(1)
c00357c5:	df e9                	fucomip %st(1),%st
c00357c7:	dd d8                	fstp   %st(0)
c00357c9:	0f 86 69 fb ff ff    	jbe    c0035338 <_dtoa_r+0xb48>
c00357cf:	dd d8                	fstp   %st(0)
c00357d1:	eb 07                	jmp    c00357da <_dtoa_r+0xfea>
c00357d3:	90                   	nop
c00357d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00357d8:	89 c2                	mov    %eax,%edx
c00357da:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00357de:	8d 42 ff             	lea    -0x1(%edx),%eax
c00357e1:	74 f5                	je     c00357d8 <_dtoa_r+0xfe8>
c00357e3:	e9 d9 f4 ff ff       	jmp    c0034cc1 <_dtoa_r+0x4d1>
c00357e8:	c6 07 31             	movb   $0x31,(%edi)
c00357eb:	89 fb                	mov    %edi,%ebx
c00357ed:	89 d7                	mov    %edx,%edi
c00357ef:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00357f3:	e9 1a f8 ff ff       	jmp    c0035012 <_dtoa_r+0x822>
c00357f8:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00357fb:	85 d2                	test   %edx,%edx
c00357fd:	0f 84 1b 01 00 00    	je     c003591e <_dtoa_r+0x112e>
c0035803:	05 33 04 00 00       	add    $0x433,%eax
c0035808:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003580b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003580e:	e9 0b f9 ff ff       	jmp    c003511e <_dtoa_r+0x92e>
c0035813:	85 c0                	test   %eax,%eax
c0035815:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035818:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003581b:	7e 45                	jle    c0035862 <_dtoa_r+0x1072>
c003581d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035820:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035827:	00 
c0035828:	89 34 24             	mov    %esi,(%esp)
c003582b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003582f:	e8 8c 11 00 00       	call   c00369c0 <__lshift>
c0035834:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035837:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003583b:	89 04 24             	mov    %eax,(%esp)
c003583e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035841:	e8 9a 12 00 00       	call   c0036ae0 <__mcmp>
c0035846:	83 f8 00             	cmp    $0x0,%eax
c0035849:	0f 8e 5b 01 00 00    	jle    c00359aa <_dtoa_r+0x11ba>
c003584f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035853:	0f 84 0c 01 00 00    	je     c0035965 <_dtoa_r+0x1175>
c0035859:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003585c:	83 c0 31             	add    $0x31,%eax
c003585f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035862:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035865:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035869:	89 cb                	mov    %ecx,%ebx
c003586b:	88 03                	mov    %al,(%ebx)
c003586d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035870:	89 fb                	mov    %edi,%ebx
c0035872:	8d 79 01             	lea    0x1(%ecx),%edi
c0035875:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035878:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003587b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003587e:	e9 8f f7 ff ff       	jmp    c0035012 <_dtoa_r+0x822>
c0035883:	dd d8                	fstp   %st(0)
c0035885:	dd d8                	fstp   %st(0)
c0035887:	dd d8                	fstp   %st(0)
c0035889:	eb 0d                	jmp    c0035898 <_dtoa_r+0x10a8>
c003588b:	90                   	nop
c003588c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035890:	dd d8                	fstp   %st(0)
c0035892:	dd d8                	fstp   %st(0)
c0035894:	dd d8                	fstp   %st(0)
c0035896:	dd d8                	fstp   %st(0)
c0035898:	89 fb                	mov    %edi,%ebx
c003589a:	89 d7                	mov    %edx,%edi
c003589c:	e9 8d f5 ff ff       	jmp    c0034e2e <_dtoa_r+0x63e>
c00358a1:	29 cb                	sub    %ecx,%ebx
c00358a3:	31 c0                	xor    %eax,%eax
c00358a5:	e9 74 f8 ff ff       	jmp    c003511e <_dtoa_r+0x92e>
c00358aa:	75 0e                	jne    c00358ba <_dtoa_r+0x10ca>
c00358ac:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00358b0:	74 08                	je     c00358ba <_dtoa_r+0x10ca>
c00358b2:	e9 b2 f9 ff ff       	jmp    c0035269 <_dtoa_r+0xa79>
c00358b7:	90                   	nop
c00358b8:	89 c2                	mov    %eax,%edx
c00358ba:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00358be:	8d 42 ff             	lea    -0x1(%edx),%eax
c00358c1:	74 f5                	je     c00358b8 <_dtoa_r+0x10c8>
c00358c3:	89 fb                	mov    %edi,%ebx
c00358c5:	89 d7                	mov    %edx,%edi
c00358c7:	e9 46 f7 ff ff       	jmp    c0035012 <_dtoa_r+0x822>
c00358cc:	8b 40 04             	mov    0x4(%eax),%eax
c00358cf:	89 34 24             	mov    %esi,(%esp)
c00358d2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00358d6:	e8 45 0a 00 00       	call   c0036320 <_Balloc>
c00358db:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00358de:	89 c3                	mov    %eax,%ebx
c00358e0:	8b 41 10             	mov    0x10(%ecx),%eax
c00358e3:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c00358ea:	89 44 24 08          	mov    %eax,0x8(%esp)
c00358ee:	89 c8                	mov    %ecx,%eax
c00358f0:	83 c0 0c             	add    $0xc,%eax
c00358f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00358f7:	8d 43 0c             	lea    0xc(%ebx),%eax
c00358fa:	89 04 24             	mov    %eax,(%esp)
c00358fd:	e8 f2 cb ff ff       	call   c00324f4 <memcpy>
c0035902:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035909:	00 
c003590a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003590e:	89 34 24             	mov    %esi,(%esp)
c0035911:	e8 aa 10 00 00       	call   c00369c0 <__lshift>
c0035916:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035919:	e9 9d fc ff ff       	jmp    c00355bb <_dtoa_r+0xdcb>
c003591e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035923:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035926:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035929:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003592c:	e9 ed f7 ff ff       	jmp    c003511e <_dtoa_r+0x92e>
c0035931:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035935:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035938:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003593b:	74 28                	je     c0035965 <_dtoa_r+0x1175>
c003593d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035941:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035944:	83 c0 01             	add    $0x1,%eax
c0035947:	89 cb                	mov    %ecx,%ebx
c0035949:	e9 1d ff ff ff       	jmp    c003586b <_dtoa_r+0x107b>
c003594e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035951:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035954:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035957:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003595a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003595d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035960:	e9 cc f8 ff ff       	jmp    c0035231 <_dtoa_r+0xa41>
c0035965:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035968:	b9 39 00 00 00       	mov    $0x39,%ecx
c003596d:	8d 50 01             	lea    0x1(%eax),%edx
c0035970:	c6 00 39             	movb   $0x39,(%eax)
c0035973:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035976:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035979:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003597c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003597f:	e9 fa f8 ff ff       	jmp    c003527e <_dtoa_r+0xa8e>
c0035984:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035987:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003598a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003598d:	83 fb 39             	cmp    $0x39,%ebx
c0035990:	74 d3                	je     c0035965 <_dtoa_r+0x1175>
c0035992:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035995:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035998:	83 c0 31             	add    $0x31,%eax
c003599b:	85 c9                	test   %ecx,%ecx
c003599d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00359a0:	0f 4e c3             	cmovle %ebx,%eax
c00359a3:	89 cb                	mov    %ecx,%ebx
c00359a5:	e9 c1 fe ff ff       	jmp    c003586b <_dtoa_r+0x107b>
c00359aa:	0f 85 b2 fe ff ff    	jne    c0035862 <_dtoa_r+0x1072>
c00359b0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00359b4:	0f 84 a8 fe ff ff    	je     c0035862 <_dtoa_r+0x1072>
c00359ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00359c0:	e9 8a fe ff ff       	jmp    c003584f <_dtoa_r+0x105f>
c00359c5:	0f 85 c7 f3 ff ff    	jne    c0034d92 <_dtoa_r+0x5a2>
c00359cb:	dd d8                	fstp   %st(0)
c00359cd:	dd d8                	fstp   %st(0)
c00359cf:	90                   	nop
c00359d0:	e9 65 fd ff ff       	jmp    c003573a <_dtoa_r+0xf4a>
c00359d5:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00359d8:	e9 dd f5 ff ff       	jmp    c0034fba <_dtoa_r+0x7ca>
c00359dd:	8d 76 00             	lea    0x0(%esi),%esi
c00359e0:	0f 84 7a f5 ff ff    	je     c0034f60 <_dtoa_r+0x770>
c00359e6:	b8 3c 00 00 00       	mov    $0x3c,%eax
c00359eb:	29 d0                	sub    %edx,%eax
c00359ed:	e9 ab f8 ff ff       	jmp    c003529d <_dtoa_r+0xaad>
c00359f2:	b8 01 00 00 00       	mov    $0x1,%eax
c00359f7:	e9 d9 ef ff ff       	jmp    c00349d5 <_dtoa_r+0x1e5>
c00359fc:	31 d2                	xor    %edx,%edx
c00359fe:	e9 36 f1 ff ff       	jmp    c0034b39 <_dtoa_r+0x349>
c0035a03:	66 90                	xchg   %ax,%ax
c0035a05:	66 90                	xchg   %ax,%ax
c0035a07:	66 90                	xchg   %ax,%ax
c0035a09:	66 90                	xchg   %ax,%ax
c0035a0b:	66 90                	xchg   %ax,%ax
c0035a0d:	66 90                	xchg   %ax,%ax
c0035a0f:	90                   	nop

c0035a10 <_setlocale_r>:
c0035a10:	55                   	push   %ebp
c0035a11:	89 e5                	mov    %esp,%ebp
c0035a13:	53                   	push   %ebx
c0035a14:	83 ec 14             	sub    $0x14,%esp
c0035a17:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0035a1a:	85 db                	test   %ebx,%ebx
c0035a1c:	74 14                	je     c0035a32 <_setlocale_r+0x22>
c0035a1e:	c7 44 24 04 38 97 03 	movl   $0xc0039738,0x4(%esp)
c0035a25:	c0 
c0035a26:	89 1c 24             	mov    %ebx,(%esp)
c0035a29:	e8 a2 cb ff ff       	call   c00325d0 <strcmp>
c0035a2e:	85 c0                	test   %eax,%eax
c0035a30:	75 0e                	jne    c0035a40 <_setlocale_r+0x30>
c0035a32:	83 c4 14             	add    $0x14,%esp
c0035a35:	b8 30 95 03 c0       	mov    $0xc0039530,%eax
c0035a3a:	5b                   	pop    %ebx
c0035a3b:	5d                   	pop    %ebp
c0035a3c:	c3                   	ret    
c0035a3d:	8d 76 00             	lea    0x0(%esi),%esi
c0035a40:	c7 44 24 04 30 95 03 	movl   $0xc0039530,0x4(%esp)
c0035a47:	c0 
c0035a48:	89 1c 24             	mov    %ebx,(%esp)
c0035a4b:	e8 80 cb ff ff       	call   c00325d0 <strcmp>
c0035a50:	85 c0                	test   %eax,%eax
c0035a52:	74 de                	je     c0035a32 <_setlocale_r+0x22>
c0035a54:	89 1c 24             	mov    %ebx,(%esp)
c0035a57:	c7 44 24 04 6a 95 03 	movl   $0xc003956a,0x4(%esp)
c0035a5e:	c0 
c0035a5f:	e8 6c cb ff ff       	call   c00325d0 <strcmp>
c0035a64:	89 c2                	mov    %eax,%edx
c0035a66:	31 c0                	xor    %eax,%eax
c0035a68:	85 d2                	test   %edx,%edx
c0035a6a:	ba 30 95 03 c0       	mov    $0xc0039530,%edx
c0035a6f:	0f 44 c2             	cmove  %edx,%eax
c0035a72:	83 c4 14             	add    $0x14,%esp
c0035a75:	5b                   	pop    %ebx
c0035a76:	5d                   	pop    %ebp
c0035a77:	c3                   	ret    
c0035a78:	90                   	nop
c0035a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035a80 <__locale_charset>:
c0035a80:	55                   	push   %ebp
c0035a81:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c0035a86:	89 e5                	mov    %esp,%ebp
c0035a88:	5d                   	pop    %ebp
c0035a89:	c3                   	ret    
c0035a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035a90 <__locale_mb_cur_max>:
c0035a90:	55                   	push   %ebp
c0035a91:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c0035a96:	89 e5                	mov    %esp,%ebp
c0035a98:	5d                   	pop    %ebp
c0035a99:	c3                   	ret    
c0035a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035aa0 <__locale_msgcharset>:
c0035aa0:	55                   	push   %ebp
c0035aa1:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c0035aa6:	89 e5                	mov    %esp,%ebp
c0035aa8:	5d                   	pop    %ebp
c0035aa9:	c3                   	ret    
c0035aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035ab0 <__locale_cjk_lang>:
c0035ab0:	55                   	push   %ebp
c0035ab1:	31 c0                	xor    %eax,%eax
c0035ab3:	89 e5                	mov    %esp,%ebp
c0035ab5:	5d                   	pop    %ebp
c0035ab6:	c3                   	ret    
c0035ab7:	89 f6                	mov    %esi,%esi
c0035ab9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035ac0 <_localeconv_r>:
c0035ac0:	55                   	push   %ebp
c0035ac1:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035ac6:	89 e5                	mov    %esp,%ebp
c0035ac8:	5d                   	pop    %ebp
c0035ac9:	c3                   	ret    
c0035aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035ad0 <setlocale>:
c0035ad0:	55                   	push   %ebp
c0035ad1:	89 e5                	mov    %esp,%ebp
c0035ad3:	83 ec 18             	sub    $0x18,%esp
c0035ad6:	e8 35 cc ff ff       	call   c0032710 <__getreent>
c0035adb:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035ade:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035ae2:	8b 55 08             	mov    0x8(%ebp),%edx
c0035ae5:	89 04 24             	mov    %eax,(%esp)
c0035ae8:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035aec:	e8 1f ff ff ff       	call   c0035a10 <_setlocale_r>
c0035af1:	c9                   	leave  
c0035af2:	c3                   	ret    
c0035af3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035af9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b00 <localeconv>:
c0035b00:	55                   	push   %ebp
c0035b01:	89 e5                	mov    %esp,%ebp
c0035b03:	83 ec 08             	sub    $0x8,%esp
c0035b06:	e8 05 cc ff ff       	call   c0032710 <__getreent>
c0035b0b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035b10:	c9                   	leave  
c0035b11:	c3                   	ret    
c0035b12:	66 90                	xchg   %ax,%ax
c0035b14:	66 90                	xchg   %ax,%ax
c0035b16:	66 90                	xchg   %ax,%ax
c0035b18:	66 90                	xchg   %ax,%ax
c0035b1a:	66 90                	xchg   %ax,%ax
c0035b1c:	66 90                	xchg   %ax,%ax
c0035b1e:	66 90                	xchg   %ax,%ax

c0035b20 <_malloc_r>:
c0035b20:	55                   	push   %ebp
c0035b21:	89 e5                	mov    %esp,%ebp
c0035b23:	57                   	push   %edi
c0035b24:	56                   	push   %esi
c0035b25:	53                   	push   %ebx
c0035b26:	83 ec 2c             	sub    $0x2c,%esp
c0035b29:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035b2c:	8d 50 0b             	lea    0xb(%eax),%edx
c0035b2f:	83 fa 16             	cmp    $0x16,%edx
c0035b32:	76 6c                	jbe    c0035ba0 <_malloc_r+0x80>
c0035b34:	89 d7                	mov    %edx,%edi
c0035b36:	83 e7 f8             	and    $0xfffffff8,%edi
c0035b39:	89 fe                	mov    %edi,%esi
c0035b3b:	c1 ee 1f             	shr    $0x1f,%esi
c0035b3e:	39 c7                	cmp    %eax,%edi
c0035b40:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b43:	89 f2                	mov    %esi,%edx
c0035b45:	72 67                	jb     c0035bae <_malloc_r+0x8e>
c0035b47:	84 d2                	test   %dl,%dl
c0035b49:	75 63                	jne    c0035bae <_malloc_r+0x8e>
c0035b4b:	89 04 24             	mov    %eax,(%esp)
c0035b4e:	e8 ad 07 00 00       	call   c0036300 <__malloc_lock>
c0035b53:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035b59:	77 65                	ja     c0035bc0 <_malloc_r+0xa0>
c0035b5b:	89 fa                	mov    %edi,%edx
c0035b5d:	c1 ea 03             	shr    $0x3,%edx
c0035b60:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c0035b67:	8b 58 0c             	mov    0xc(%eax),%ebx
c0035b6a:	39 c3                	cmp    %eax,%ebx
c0035b6c:	0f 84 3e 05 00 00    	je     c00360b0 <_malloc_r+0x590>
c0035b72:	8b 43 04             	mov    0x4(%ebx),%eax
c0035b75:	83 e0 fc             	and    $0xfffffffc,%eax
c0035b78:	8b 53 0c             	mov    0xc(%ebx),%edx
c0035b7b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c0035b7e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035b81:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035b84:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035b89:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b8c:	89 04 24             	mov    %eax,(%esp)
c0035b8f:	e8 7c 07 00 00       	call   c0036310 <__malloc_unlock>
c0035b94:	8d 43 08             	lea    0x8(%ebx),%eax
c0035b97:	83 c4 2c             	add    $0x2c,%esp
c0035b9a:	5b                   	pop    %ebx
c0035b9b:	5e                   	pop    %esi
c0035b9c:	5f                   	pop    %edi
c0035b9d:	5d                   	pop    %ebp
c0035b9e:	c3                   	ret    
c0035b9f:	90                   	nop
c0035ba0:	bf 10 00 00 00       	mov    $0x10,%edi
c0035ba5:	31 d2                	xor    %edx,%edx
c0035ba7:	39 c7                	cmp    %eax,%edi
c0035ba9:	8b 45 08             	mov    0x8(%ebp),%eax
c0035bac:	73 99                	jae    c0035b47 <_malloc_r+0x27>
c0035bae:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035bb4:	83 c4 2c             	add    $0x2c,%esp
c0035bb7:	31 c0                	xor    %eax,%eax
c0035bb9:	5b                   	pop    %ebx
c0035bba:	5e                   	pop    %esi
c0035bbb:	5f                   	pop    %edi
c0035bbc:	5d                   	pop    %ebp
c0035bbd:	c3                   	ret    
c0035bbe:	66 90                	xchg   %ax,%ax
c0035bc0:	89 fe                	mov    %edi,%esi
c0035bc2:	c1 ee 09             	shr    $0x9,%esi
c0035bc5:	85 f6                	test   %esi,%esi
c0035bc7:	0f 84 ab 01 00 00    	je     c0035d78 <_malloc_r+0x258>
c0035bcd:	83 fe 04             	cmp    $0x4,%esi
c0035bd0:	0f 87 8a 03 00 00    	ja     c0035f60 <_malloc_r+0x440>
c0035bd6:	89 fe                	mov    %edi,%esi
c0035bd8:	c1 ee 06             	shr    $0x6,%esi
c0035bdb:	83 c6 38             	add    $0x38,%esi
c0035bde:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035be1:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035be8:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035beb:	39 d9                	cmp    %ebx,%ecx
c0035bed:	75 18                	jne    c0035c07 <_malloc_r+0xe7>
c0035bef:	eb 28                	jmp    c0035c19 <_malloc_r+0xf9>
c0035bf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035bf8:	85 d2                	test   %edx,%edx
c0035bfa:	0f 89 78 ff ff ff    	jns    c0035b78 <_malloc_r+0x58>
c0035c00:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035c03:	39 d9                	cmp    %ebx,%ecx
c0035c05:	74 12                	je     c0035c19 <_malloc_r+0xf9>
c0035c07:	8b 43 04             	mov    0x4(%ebx),%eax
c0035c0a:	83 e0 fc             	and    $0xfffffffc,%eax
c0035c0d:	89 c2                	mov    %eax,%edx
c0035c0f:	29 fa                	sub    %edi,%edx
c0035c11:	83 fa 0f             	cmp    $0xf,%edx
c0035c14:	7e e2                	jle    c0035bf8 <_malloc_r+0xd8>
c0035c16:	83 ee 01             	sub    $0x1,%esi
c0035c19:	8d 46 01             	lea    0x1(%esi),%eax
c0035c1c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c1f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035c25:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035c2a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0035c30:	74 6b                	je     c0035c9d <_malloc_r+0x17d>
c0035c32:	8b 73 04             	mov    0x4(%ebx),%esi
c0035c35:	83 e6 fc             	and    $0xfffffffc,%esi
c0035c38:	89 f0                	mov    %esi,%eax
c0035c3a:	29 f8                	sub    %edi,%eax
c0035c3c:	83 f8 0f             	cmp    $0xf,%eax
c0035c3f:	0f 8f a3 03 00 00    	jg     c0035fe8 <_malloc_r+0x4c8>
c0035c45:	85 c0                	test   %eax,%eax
c0035c47:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c0035c4e:	c5 03 c0 
c0035c51:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c0035c58:	c5 03 c0 
c0035c5b:	0f 89 27 01 00 00    	jns    c0035d88 <_malloc_r+0x268>
c0035c61:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035c67:	0f 87 1b 03 00 00    	ja     c0035f88 <_malloc_r+0x468>
c0035c6d:	c1 ee 03             	shr    $0x3,%esi
c0035c70:	b8 01 00 00 00       	mov    $0x1,%eax
c0035c75:	89 f1                	mov    %esi,%ecx
c0035c77:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c0035c7e:	c1 f9 02             	sar    $0x2,%ecx
c0035c81:	d3 e0                	shl    %cl,%eax
c0035c83:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035c86:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c0035c8c:	89 53 0c             	mov    %edx,0xc(%ebx)
c0035c8f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035c92:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035c97:	89 5a 08             	mov    %ebx,0x8(%edx)
c0035c9a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c0035c9d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035ca0:	be 01 00 00 00       	mov    $0x1,%esi
c0035ca5:	c1 f9 02             	sar    $0x2,%ecx
c0035ca8:	d3 e6                	shl    %cl,%esi
c0035caa:	39 c6                	cmp    %eax,%esi
c0035cac:	0f 87 f6 00 00 00    	ja     c0035da8 <_malloc_r+0x288>
c0035cb2:	85 f0                	test   %esi,%eax
c0035cb4:	0f 85 76 03 00 00    	jne    c0036030 <_malloc_r+0x510>
c0035cba:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0035cbd:	01 f6                	add    %esi,%esi
c0035cbf:	83 e2 fc             	and    $0xfffffffc,%edx
c0035cc2:	85 f0                	test   %esi,%eax
c0035cc4:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035cc7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035cca:	0f 85 60 03 00 00    	jne    c0036030 <_malloc_r+0x510>
c0035cd0:	89 ca                	mov    %ecx,%edx
c0035cd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035cd8:	01 f6                	add    %esi,%esi
c0035cda:	83 c2 04             	add    $0x4,%edx
c0035cdd:	85 f0                	test   %esi,%eax
c0035cdf:	74 f7                	je     c0035cd8 <_malloc_r+0x1b8>
c0035ce1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035ce4:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035ce7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035cea:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035cf1:	89 f1                	mov    %esi,%ecx
c0035cf3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035cf6:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035cf9:	39 d9                	cmp    %ebx,%ecx
c0035cfb:	75 1e                	jne    c0035d1b <_malloc_r+0x1fb>
c0035cfd:	e9 36 03 00 00       	jmp    c0036038 <_malloc_r+0x518>
c0035d02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035d08:	85 d2                	test   %edx,%edx
c0035d0a:	0f 89 c0 03 00 00    	jns    c00360d0 <_malloc_r+0x5b0>
c0035d10:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035d13:	39 d9                	cmp    %ebx,%ecx
c0035d15:	0f 84 1d 03 00 00    	je     c0036038 <_malloc_r+0x518>
c0035d1b:	8b 43 04             	mov    0x4(%ebx),%eax
c0035d1e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035d21:	89 c2                	mov    %eax,%edx
c0035d23:	29 fa                	sub    %edi,%edx
c0035d25:	83 fa 0f             	cmp    $0xf,%edx
c0035d28:	7e de                	jle    c0035d08 <_malloc_r+0x1e8>
c0035d2a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c0035d2d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035d30:	83 cf 01             	or     $0x1,%edi
c0035d33:	8b 73 08             	mov    0x8(%ebx),%esi
c0035d36:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035d39:	89 4e 0c             	mov    %ecx,0xc(%esi)
c0035d3c:	89 71 08             	mov    %esi,0x8(%ecx)
c0035d3f:	89 d1                	mov    %edx,%ecx
c0035d41:	83 c9 01             	or     $0x1,%ecx
c0035d44:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035d49:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c0035d4e:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c0035d55:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c0035d5c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035d5f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035d62:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d65:	89 04 24             	mov    %eax,(%esp)
c0035d68:	e8 a3 05 00 00       	call   c0036310 <__malloc_unlock>
c0035d6d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035d70:	e9 22 fe ff ff       	jmp    c0035b97 <_malloc_r+0x77>
c0035d75:	8d 76 00             	lea    0x0(%esi),%esi
c0035d78:	b8 7e 00 00 00       	mov    $0x7e,%eax
c0035d7d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035d82:	e9 5a fe ff ff       	jmp    c0035be1 <_malloc_r+0xc1>
c0035d87:	90                   	nop
c0035d88:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d8b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035d90:	89 04 24             	mov    %eax,(%esp)
c0035d93:	e8 78 05 00 00       	call   c0036310 <__malloc_unlock>
c0035d98:	83 c4 2c             	add    $0x2c,%esp
c0035d9b:	8d 43 08             	lea    0x8(%ebx),%eax
c0035d9e:	5b                   	pop    %ebx
c0035d9f:	5e                   	pop    %esi
c0035da0:	5f                   	pop    %edi
c0035da1:	5d                   	pop    %ebp
c0035da2:	c3                   	ret    
c0035da3:	90                   	nop
c0035da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035da8:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035dae:	8b 73 04             	mov    0x4(%ebx),%esi
c0035db1:	83 e6 fc             	and    $0xfffffffc,%esi
c0035db4:	39 f7                	cmp    %esi,%edi
c0035db6:	77 0d                	ja     c0035dc5 <_malloc_r+0x2a5>
c0035db8:	89 f0                	mov    %esi,%eax
c0035dba:	29 f8                	sub    %edi,%eax
c0035dbc:	83 f8 0f             	cmp    $0xf,%eax
c0035dbf:	0f 8f 6b 01 00 00    	jg     c0035f30 <_malloc_r+0x410>
c0035dc5:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c0035dcb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c0035dce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035dd1:	01 f9                	add    %edi,%ecx
c0035dd3:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035dd9:	83 c1 10             	add    $0x10,%ecx
c0035ddc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035de1:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035de8:	0f 44 c1             	cmove  %ecx,%eax
c0035deb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035dee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035df2:	8b 45 08             	mov    0x8(%ebp),%eax
c0035df5:	89 04 24             	mov    %eax,(%esp)
c0035df8:	e8 03 13 00 00       	call   c0037100 <_sbrk_r>
c0035dfd:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035e00:	89 c1                	mov    %eax,%ecx
c0035e02:	0f 84 17 03 00 00    	je     c003611f <_malloc_r+0x5ff>
c0035e08:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035e0b:	0f 87 02 03 00 00    	ja     c0036113 <_malloc_r+0x5f3>
c0035e11:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035e14:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035e1a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c0035e1d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035e23:	0f 84 a9 03 00 00    	je     c00361d2 <_malloc_r+0x6b2>
c0035e29:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035e30:	0f 84 ca 03 00 00    	je     c0036200 <_malloc_r+0x6e0>
c0035e36:	89 c8                	mov    %ecx,%eax
c0035e38:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c0035e3b:	01 d0                	add    %edx,%eax
c0035e3d:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035e42:	89 c8                	mov    %ecx,%eax
c0035e44:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035e49:	83 e0 07             	and    $0x7,%eax
c0035e4c:	74 0c                	je     c0035e5a <_malloc_r+0x33a>
c0035e4e:	29 c1                	sub    %eax,%ecx
c0035e50:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035e55:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035e58:	29 c2                	sub    %eax,%edx
c0035e5a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035e5d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035e60:	01 c8                	add    %ecx,%eax
c0035e62:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035e67:	29 c2                	sub    %eax,%edx
c0035e69:	8b 45 08             	mov    0x8(%ebp),%eax
c0035e6c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035e70:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035e73:	89 04 24             	mov    %eax,(%esp)
c0035e76:	e8 85 12 00 00       	call   c0037100 <_sbrk_r>
c0035e7b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035e7e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035e81:	0f 84 6d 03 00 00    	je     c00361f4 <_malloc_r+0x6d4>
c0035e87:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035e8a:	29 c8                	sub    %ecx,%eax
c0035e8c:	01 d0                	add    %edx,%eax
c0035e8e:	83 c8 01             	or     $0x1,%eax
c0035e91:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035e97:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035e9d:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c0035ea3:	89 41 04             	mov    %eax,0x4(%ecx)
c0035ea6:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035eac:	0f 84 f2 02 00 00    	je     c00361a4 <_malloc_r+0x684>
c0035eb2:	83 fe 0f             	cmp    $0xf,%esi
c0035eb5:	0f 86 8d 02 00 00    	jbe    c0036148 <_malloc_r+0x628>
c0035ebb:	8b 43 04             	mov    0x4(%ebx),%eax
c0035ebe:	83 ee 0c             	sub    $0xc,%esi
c0035ec1:	83 e6 f8             	and    $0xfffffff8,%esi
c0035ec4:	83 e0 01             	and    $0x1,%eax
c0035ec7:	09 f0                	or     %esi,%eax
c0035ec9:	83 fe 0f             	cmp    $0xf,%esi
c0035ecc:	89 43 04             	mov    %eax,0x4(%ebx)
c0035ecf:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035ed4:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c0035edb:	00 
c0035edc:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035ee3:	00 
c0035ee4:	0f 87 a2 02 00 00    	ja     c003618c <_malloc_r+0x66c>
c0035eea:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035ef0:	76 06                	jbe    c0035ef8 <_malloc_r+0x3d8>
c0035ef2:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035ef8:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c0035efe:	76 06                	jbe    c0035f06 <_malloc_r+0x3e6>
c0035f00:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035f06:	8b 50 04             	mov    0x4(%eax),%edx
c0035f09:	89 c3                	mov    %eax,%ebx
c0035f0b:	83 e2 fc             	and    $0xfffffffc,%edx
c0035f0e:	89 d0                	mov    %edx,%eax
c0035f10:	29 f8                	sub    %edi,%eax
c0035f12:	39 d7                	cmp    %edx,%edi
c0035f14:	77 05                	ja     c0035f1b <_malloc_r+0x3fb>
c0035f16:	83 f8 0f             	cmp    $0xf,%eax
c0035f19:	7f 15                	jg     c0035f30 <_malloc_r+0x410>
c0035f1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f1e:	89 04 24             	mov    %eax,(%esp)
c0035f21:	e8 ea 03 00 00       	call   c0036310 <__malloc_unlock>
c0035f26:	31 c0                	xor    %eax,%eax
c0035f28:	e9 6a fc ff ff       	jmp    c0035b97 <_malloc_r+0x77>
c0035f2d:	8d 76 00             	lea    0x0(%esi),%esi
c0035f30:	89 fa                	mov    %edi,%edx
c0035f32:	83 c8 01             	or     $0x1,%eax
c0035f35:	83 ca 01             	or     $0x1,%edx
c0035f38:	89 53 04             	mov    %edx,0x4(%ebx)
c0035f3b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035f3e:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035f44:	89 42 04             	mov    %eax,0x4(%edx)
c0035f47:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f4a:	89 04 24             	mov    %eax,(%esp)
c0035f4d:	e8 be 03 00 00       	call   c0036310 <__malloc_unlock>
c0035f52:	83 c4 2c             	add    $0x2c,%esp
c0035f55:	8d 43 08             	lea    0x8(%ebx),%eax
c0035f58:	5b                   	pop    %ebx
c0035f59:	5e                   	pop    %esi
c0035f5a:	5f                   	pop    %edi
c0035f5b:	5d                   	pop    %ebp
c0035f5c:	c3                   	ret    
c0035f5d:	8d 76 00             	lea    0x0(%esi),%esi
c0035f60:	83 fe 14             	cmp    $0x14,%esi
c0035f63:	0f 86 8f 01 00 00    	jbe    c00360f8 <_malloc_r+0x5d8>
c0035f69:	83 fe 54             	cmp    $0x54,%esi
c0035f6c:	0f 87 be 01 00 00    	ja     c0036130 <_malloc_r+0x610>
c0035f72:	89 fe                	mov    %edi,%esi
c0035f74:	c1 ee 0c             	shr    $0xc,%esi
c0035f77:	83 c6 6e             	add    $0x6e,%esi
c0035f7a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035f7d:	e9 5f fc ff ff       	jmp    c0035be1 <_malloc_r+0xc1>
c0035f82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035f88:	89 f1                	mov    %esi,%ecx
c0035f8a:	c1 e9 09             	shr    $0x9,%ecx
c0035f8d:	83 f9 04             	cmp    $0x4,%ecx
c0035f90:	0f 86 6d 01 00 00    	jbe    c0036103 <_malloc_r+0x5e3>
c0035f96:	83 f9 14             	cmp    $0x14,%ecx
c0035f99:	0f 87 0f 02 00 00    	ja     c00361ae <_malloc_r+0x68e>
c0035f9f:	83 c1 5b             	add    $0x5b,%ecx
c0035fa2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035fa5:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c0035fac:	8b 50 08             	mov    0x8(%eax),%edx
c0035faf:	39 c2                	cmp    %eax,%edx
c0035fb1:	0f 84 a1 01 00 00    	je     c0036158 <_malloc_r+0x638>
c0035fb7:	90                   	nop
c0035fb8:	8b 4a 04             	mov    0x4(%edx),%ecx
c0035fbb:	83 e1 fc             	and    $0xfffffffc,%ecx
c0035fbe:	39 ce                	cmp    %ecx,%esi
c0035fc0:	73 07                	jae    c0035fc9 <_malloc_r+0x4a9>
c0035fc2:	8b 52 08             	mov    0x8(%edx),%edx
c0035fc5:	39 d0                	cmp    %edx,%eax
c0035fc7:	75 ef                	jne    c0035fb8 <_malloc_r+0x498>
c0035fc9:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0035fcc:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035fd1:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035fd4:	89 53 08             	mov    %edx,0x8(%ebx)
c0035fd7:	89 59 08             	mov    %ebx,0x8(%ecx)
c0035fda:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0035fdd:	e9 bb fc ff ff       	jmp    c0035c9d <_malloc_r+0x17d>
c0035fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035fe8:	89 c1                	mov    %eax,%ecx
c0035fea:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035fed:	83 c9 01             	or     $0x1,%ecx
c0035ff0:	83 cf 01             	or     $0x1,%edi
c0035ff3:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035ff6:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0035ffc:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0036002:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0036009:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0036010:	89 4a 04             	mov    %ecx,0x4(%edx)
c0036013:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0036016:	8b 45 08             	mov    0x8(%ebp),%eax
c0036019:	89 04 24             	mov    %eax,(%esp)
c003601c:	e8 ef 02 00 00       	call   c0036310 <__malloc_unlock>
c0036021:	8d 43 08             	lea    0x8(%ebx),%eax
c0036024:	e9 6e fb ff ff       	jmp    c0035b97 <_malloc_r+0x77>
c0036029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036030:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0036033:	e9 af fc ff ff       	jmp    c0035ce7 <_malloc_r+0x1c7>
c0036038:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003603c:	83 c1 08             	add    $0x8,%ecx
c003603f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0036043:	0f 85 ad fc ff ff    	jne    c0035cf6 <_malloc_r+0x1d6>
c0036049:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003604c:	eb 12                	jmp    c0036060 <_malloc_r+0x540>
c003604e:	66 90                	xchg   %ax,%ax
c0036050:	8d 56 f8             	lea    -0x8(%esi),%edx
c0036053:	8b 36                	mov    (%esi),%esi
c0036055:	83 e8 01             	sub    $0x1,%eax
c0036058:	39 d6                	cmp    %edx,%esi
c003605a:	0f 85 ea 01 00 00    	jne    c003624a <_malloc_r+0x72a>
c0036060:	a8 03                	test   $0x3,%al
c0036062:	75 ec                	jne    c0036050 <_malloc_r+0x530>
c0036064:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036067:	f7 d0                	not    %eax
c0036069:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c003606f:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0036074:	d1 65 dc             	shll   -0x24(%ebp)
c0036077:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003607a:	39 c2                	cmp    %eax,%edx
c003607c:	0f 87 26 fd ff ff    	ja     c0035da8 <_malloc_r+0x288>
c0036082:	85 d2                	test   %edx,%edx
c0036084:	0f 84 1e fd ff ff    	je     c0035da8 <_malloc_r+0x288>
c003608a:	85 c2                	test   %eax,%edx
c003608c:	0f 85 c2 01 00 00    	jne    c0036254 <_malloc_r+0x734>
c0036092:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0036095:	89 f1                	mov    %esi,%ecx
c0036097:	01 d2                	add    %edx,%edx
c0036099:	83 c1 04             	add    $0x4,%ecx
c003609c:	85 d0                	test   %edx,%eax
c003609e:	74 f7                	je     c0036097 <_malloc_r+0x577>
c00360a0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00360a3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00360a6:	e9 3c fc ff ff       	jmp    c0035ce7 <_malloc_r+0x1c7>
c00360ab:	90                   	nop
c00360ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00360b0:	8d 43 08             	lea    0x8(%ebx),%eax
c00360b3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c00360b6:	39 d8                	cmp    %ebx,%eax
c00360b8:	0f 85 b4 fa ff ff    	jne    c0035b72 <_malloc_r+0x52>
c00360be:	8d 42 02             	lea    0x2(%edx),%eax
c00360c1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00360c4:	e9 56 fb ff ff       	jmp    c0035c1f <_malloc_r+0xff>
c00360c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00360d0:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00360d5:	8b 53 08             	mov    0x8(%ebx),%edx
c00360d8:	8b 43 0c             	mov    0xc(%ebx),%eax
c00360db:	89 42 0c             	mov    %eax,0xc(%edx)
c00360de:	89 50 08             	mov    %edx,0x8(%eax)
c00360e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00360e4:	89 04 24             	mov    %eax,(%esp)
c00360e7:	e8 24 02 00 00       	call   c0036310 <__malloc_unlock>
c00360ec:	8d 43 08             	lea    0x8(%ebx),%eax
c00360ef:	e9 a3 fa ff ff       	jmp    c0035b97 <_malloc_r+0x77>
c00360f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00360f8:	83 c6 5b             	add    $0x5b,%esi
c00360fb:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00360fe:	e9 de fa ff ff       	jmp    c0035be1 <_malloc_r+0xc1>
c0036103:	89 f1                	mov    %esi,%ecx
c0036105:	c1 e9 06             	shr    $0x6,%ecx
c0036108:	83 c1 38             	add    $0x38,%ecx
c003610b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003610e:	e9 92 fe ff ff       	jmp    c0035fa5 <_malloc_r+0x485>
c0036113:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0036119:	0f 84 f2 fc ff ff    	je     c0035e11 <_malloc_r+0x2f1>
c003611f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0036125:	8b 53 04             	mov    0x4(%ebx),%edx
c0036128:	83 e2 fc             	and    $0xfffffffc,%edx
c003612b:	e9 de fd ff ff       	jmp    c0035f0e <_malloc_r+0x3ee>
c0036130:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0036136:	77 3c                	ja     c0036174 <_malloc_r+0x654>
c0036138:	89 fe                	mov    %edi,%esi
c003613a:	c1 ee 0f             	shr    $0xf,%esi
c003613d:	83 c6 77             	add    $0x77,%esi
c0036140:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0036143:	e9 99 fa ff ff       	jmp    c0035be1 <_malloc_r+0xc1>
c0036148:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c003614f:	89 cb                	mov    %ecx,%ebx
c0036151:	31 d2                	xor    %edx,%edx
c0036153:	e9 b6 fd ff ff       	jmp    c0035f0e <_malloc_r+0x3ee>
c0036158:	c1 f9 02             	sar    $0x2,%ecx
c003615b:	b8 01 00 00 00       	mov    $0x1,%eax
c0036160:	d3 e0                	shl    %cl,%eax
c0036162:	89 d1                	mov    %edx,%ecx
c0036164:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c003616a:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c003616f:	e9 5d fe ff ff       	jmp    c0035fd1 <_malloc_r+0x4b1>
c0036174:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c003617a:	77 47                	ja     c00361c3 <_malloc_r+0x6a3>
c003617c:	89 fe                	mov    %edi,%esi
c003617e:	c1 ee 12             	shr    $0x12,%esi
c0036181:	83 c6 7c             	add    $0x7c,%esi
c0036184:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0036187:	e9 55 fa ff ff       	jmp    c0035be1 <_malloc_r+0xc1>
c003618c:	8b 45 08             	mov    0x8(%ebp),%eax
c003618f:	83 c3 08             	add    $0x8,%ebx
c0036192:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036196:	89 04 24             	mov    %eax,(%esp)
c0036199:	e8 52 22 00 00       	call   c00383f0 <_free_r>
c003619e:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c00361a4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00361a9:	e9 3c fd ff ff       	jmp    c0035eea <_malloc_r+0x3ca>
c00361ae:	83 f9 54             	cmp    $0x54,%ecx
c00361b1:	77 58                	ja     c003620b <_malloc_r+0x6eb>
c00361b3:	89 f1                	mov    %esi,%ecx
c00361b5:	c1 e9 0c             	shr    $0xc,%ecx
c00361b8:	83 c1 6e             	add    $0x6e,%ecx
c00361bb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00361be:	e9 e2 fd ff ff       	jmp    c0035fa5 <_malloc_r+0x485>
c00361c3:	b8 fc 00 00 00       	mov    $0xfc,%eax
c00361c8:	be 7e 00 00 00       	mov    $0x7e,%esi
c00361cd:	e9 0f fa ff ff       	jmp    c0035be1 <_malloc_r+0xc1>
c00361d2:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c00361d9:	0f 85 4a fc ff ff    	jne    c0035e29 <_malloc_r+0x309>
c00361df:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00361e2:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00361e7:	01 f1                	add    %esi,%ecx
c00361e9:	83 c9 01             	or     $0x1,%ecx
c00361ec:	89 48 04             	mov    %ecx,0x4(%eax)
c00361ef:	e9 f6 fc ff ff       	jmp    c0035eea <_malloc_r+0x3ca>
c00361f4:	b8 01 00 00 00       	mov    $0x1,%eax
c00361f9:	31 d2                	xor    %edx,%edx
c00361fb:	e9 91 fc ff ff       	jmp    c0035e91 <_malloc_r+0x371>
c0036200:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0036206:	e9 37 fc ff ff       	jmp    c0035e42 <_malloc_r+0x322>
c003620b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0036211:	77 10                	ja     c0036223 <_malloc_r+0x703>
c0036213:	89 f1                	mov    %esi,%ecx
c0036215:	c1 e9 0f             	shr    $0xf,%ecx
c0036218:	83 c1 77             	add    $0x77,%ecx
c003621b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003621e:	e9 82 fd ff ff       	jmp    c0035fa5 <_malloc_r+0x485>
c0036223:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0036229:	77 10                	ja     c003623b <_malloc_r+0x71b>
c003622b:	89 f1                	mov    %esi,%ecx
c003622d:	c1 e9 12             	shr    $0x12,%ecx
c0036230:	83 c1 7c             	add    $0x7c,%ecx
c0036233:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0036236:	e9 6a fd ff ff       	jmp    c0035fa5 <_malloc_r+0x485>
c003623b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0036240:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0036245:	e9 5b fd ff ff       	jmp    c0035fa5 <_malloc_r+0x485>
c003624a:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003624f:	e9 20 fe ff ff       	jmp    c0036074 <_malloc_r+0x554>
c0036254:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036257:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003625a:	e9 88 fa ff ff       	jmp    c0035ce7 <_malloc_r+0x1c7>
c003625f:	90                   	nop

c0036260 <memchr>:
c0036260:	55                   	push   %ebp
c0036261:	89 e5                	mov    %esp,%ebp
c0036263:	57                   	push   %edi
c0036264:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0036268:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003626b:	8b 7d 08             	mov    0x8(%ebp),%edi
c003626e:	31 d2                	xor    %edx,%edx
c0036270:	85 c9                	test   %ecx,%ecx
c0036272:	74 79                	je     c00362ed <L20>
c0036274:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003627a:	74 28                	je     c00362a4 <L5>
c003627c:	3a 07                	cmp    (%edi),%al
c003627e:	74 6a                	je     c00362ea <L15>
c0036280:	47                   	inc    %edi
c0036281:	49                   	dec    %ecx
c0036282:	74 69                	je     c00362ed <L20>
c0036284:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003628a:	74 18                	je     c00362a4 <L5>
c003628c:	3a 07                	cmp    (%edi),%al
c003628e:	74 5a                	je     c00362ea <L15>
c0036290:	47                   	inc    %edi
c0036291:	49                   	dec    %ecx
c0036292:	74 59                	je     c00362ed <L20>
c0036294:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003629a:	74 08                	je     c00362a4 <L5>
c003629c:	3a 07                	cmp    (%edi),%al
c003629e:	74 4a                	je     c00362ea <L15>
c00362a0:	47                   	inc    %edi
c00362a1:	49                   	dec    %ecx
c00362a2:	74 49                	je     c00362ed <L20>

c00362a4 <L5>:
c00362a4:	88 c4                	mov    %al,%ah
c00362a6:	89 c2                	mov    %eax,%edx
c00362a8:	c1 e2 10             	shl    $0x10,%edx
c00362ab:	09 d0                	or     %edx,%eax
c00362ad:	53                   	push   %ebx
c00362ae:	66 90                	xchg   %ax,%ax

c00362b0 <L8>:
c00362b0:	83 e9 04             	sub    $0x4,%ecx
c00362b3:	72 1c                	jb     c00362d1 <L9>
c00362b5:	8b 17                	mov    (%edi),%edx
c00362b7:	83 c7 04             	add    $0x4,%edi
c00362ba:	31 c2                	xor    %eax,%edx
c00362bc:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c00362c2:	f7 d2                	not    %edx
c00362c4:	21 d3                	and    %edx,%ebx
c00362c6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c00362cc:	74 e2                	je     c00362b0 <L8>
c00362ce:	83 ef 04             	sub    $0x4,%edi

c00362d1 <L9>:
c00362d1:	5b                   	pop    %ebx
c00362d2:	31 d2                	xor    %edx,%edx
c00362d4:	83 c1 04             	add    $0x4,%ecx
c00362d7:	74 14                	je     c00362ed <L20>
c00362d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00362e0 <L10>:
c00362e0:	3a 07                	cmp    (%edi),%al
c00362e2:	74 06                	je     c00362ea <L15>
c00362e4:	47                   	inc    %edi
c00362e5:	49                   	dec    %ecx
c00362e6:	75 f8                	jne    c00362e0 <L10>
c00362e8:	31 ff                	xor    %edi,%edi

c00362ea <L15>:
c00362ea:	4a                   	dec    %edx
c00362eb:	21 fa                	and    %edi,%edx

c00362ed <L20>:
c00362ed:	89 d0                	mov    %edx,%eax
c00362ef:	8d 65 fc             	lea    -0x4(%ebp),%esp
c00362f2:	5f                   	pop    %edi
c00362f3:	c9                   	leave  
c00362f4:	c3                   	ret    
c00362f5:	66 90                	xchg   %ax,%ax
c00362f7:	66 90                	xchg   %ax,%ax
c00362f9:	66 90                	xchg   %ax,%ax
c00362fb:	66 90                	xchg   %ax,%ax
c00362fd:	66 90                	xchg   %ax,%ax
c00362ff:	90                   	nop

c0036300 <__malloc_lock>:
c0036300:	55                   	push   %ebp
c0036301:	89 e5                	mov    %esp,%ebp
c0036303:	5d                   	pop    %ebp
c0036304:	c3                   	ret    
c0036305:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036310 <__malloc_unlock>:
c0036310:	55                   	push   %ebp
c0036311:	89 e5                	mov    %esp,%ebp
c0036313:	5d                   	pop    %ebp
c0036314:	c3                   	ret    
c0036315:	66 90                	xchg   %ax,%ax
c0036317:	66 90                	xchg   %ax,%ax
c0036319:	66 90                	xchg   %ax,%ax
c003631b:	66 90                	xchg   %ax,%ax
c003631d:	66 90                	xchg   %ax,%ax
c003631f:	90                   	nop

c0036320 <_Balloc>:
c0036320:	55                   	push   %ebp
c0036321:	89 e5                	mov    %esp,%ebp
c0036323:	57                   	push   %edi
c0036324:	56                   	push   %esi
c0036325:	53                   	push   %ebx
c0036326:	83 ec 1c             	sub    $0x1c,%esp
c0036329:	8b 75 08             	mov    0x8(%ebp),%esi
c003632c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003632f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0036332:	85 c0                	test   %eax,%eax
c0036334:	74 2a                	je     c0036360 <_Balloc+0x40>
c0036336:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0036339:	8b 02                	mov    (%edx),%eax
c003633b:	85 c0                	test   %eax,%eax
c003633d:	74 49                	je     c0036388 <_Balloc+0x68>
c003633f:	8b 08                	mov    (%eax),%ecx
c0036341:	89 0a                	mov    %ecx,(%edx)
c0036343:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c003634a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0036351:	83 c4 1c             	add    $0x1c,%esp
c0036354:	5b                   	pop    %ebx
c0036355:	5e                   	pop    %esi
c0036356:	5f                   	pop    %edi
c0036357:	5d                   	pop    %ebp
c0036358:	c3                   	ret    
c0036359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036360:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0036367:	00 
c0036368:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c003636f:	00 
c0036370:	89 34 24             	mov    %esi,(%esp)
c0036373:	e8 c8 1e 00 00       	call   c0038240 <_calloc_r>
c0036378:	85 c0                	test   %eax,%eax
c003637a:	89 46 4c             	mov    %eax,0x4c(%esi)
c003637d:	75 b7                	jne    c0036336 <_Balloc+0x16>
c003637f:	31 c0                	xor    %eax,%eax
c0036381:	eb ce                	jmp    c0036351 <_Balloc+0x31>
c0036383:	90                   	nop
c0036384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036388:	89 d9                	mov    %ebx,%ecx
c003638a:	bf 01 00 00 00       	mov    $0x1,%edi
c003638f:	d3 e7                	shl    %cl,%edi
c0036391:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0036398:	89 44 24 08          	mov    %eax,0x8(%esp)
c003639c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00363a3:	00 
c00363a4:	89 34 24             	mov    %esi,(%esp)
c00363a7:	e8 94 1e 00 00       	call   c0038240 <_calloc_r>
c00363ac:	85 c0                	test   %eax,%eax
c00363ae:	74 cf                	je     c003637f <_Balloc+0x5f>
c00363b0:	89 58 04             	mov    %ebx,0x4(%eax)
c00363b3:	89 78 08             	mov    %edi,0x8(%eax)
c00363b6:	eb 8b                	jmp    c0036343 <_Balloc+0x23>
c00363b8:	90                   	nop
c00363b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00363c0 <_Bfree>:
c00363c0:	55                   	push   %ebp
c00363c1:	89 e5                	mov    %esp,%ebp
c00363c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00363c6:	85 c0                	test   %eax,%eax
c00363c8:	74 12                	je     c00363dc <_Bfree+0x1c>
c00363ca:	8b 55 08             	mov    0x8(%ebp),%edx
c00363cd:	8b 48 04             	mov    0x4(%eax),%ecx
c00363d0:	8b 52 4c             	mov    0x4c(%edx),%edx
c00363d3:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c00363d6:	8b 0a                	mov    (%edx),%ecx
c00363d8:	89 08                	mov    %ecx,(%eax)
c00363da:	89 02                	mov    %eax,(%edx)
c00363dc:	5d                   	pop    %ebp
c00363dd:	c3                   	ret    
c00363de:	66 90                	xchg   %ax,%ax

c00363e0 <__multadd>:
c00363e0:	55                   	push   %ebp
c00363e1:	89 e5                	mov    %esp,%ebp
c00363e3:	57                   	push   %edi
c00363e4:	56                   	push   %esi
c00363e5:	53                   	push   %ebx
c00363e6:	83 ec 2c             	sub    $0x2c,%esp
c00363e9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00363ec:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00363ef:	8b 40 10             	mov    0x10(%eax),%eax
c00363f2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00363f5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00363f8:	8d 78 14             	lea    0x14(%eax),%edi
c00363fb:	31 c0                	xor    %eax,%eax
c00363fd:	8d 76 00             	lea    0x0(%esi),%esi
c0036400:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0036403:	0f b7 d1             	movzwl %cx,%edx
c0036406:	0f af 55 10          	imul   0x10(%ebp),%edx
c003640a:	c1 e9 10             	shr    $0x10,%ecx
c003640d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0036411:	01 da                	add    %ebx,%edx
c0036413:	89 d3                	mov    %edx,%ebx
c0036415:	0f b7 d2             	movzwl %dx,%edx
c0036418:	c1 eb 10             	shr    $0x10,%ebx
c003641b:	01 d9                	add    %ebx,%ecx
c003641d:	89 ce                	mov    %ecx,%esi
c003641f:	c1 e1 10             	shl    $0x10,%ecx
c0036422:	01 d1                	add    %edx,%ecx
c0036424:	c1 ee 10             	shr    $0x10,%esi
c0036427:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c003642a:	83 c0 01             	add    $0x1,%eax
c003642d:	89 f3                	mov    %esi,%ebx
c003642f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036432:	7f cc                	jg     c0036400 <__multadd+0x20>
c0036434:	85 f6                	test   %esi,%esi
c0036436:	74 1b                	je     c0036453 <__multadd+0x73>
c0036438:	8b 45 0c             	mov    0xc(%ebp),%eax
c003643b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c003643e:	3b 78 08             	cmp    0x8(%eax),%edi
c0036441:	7d 1d                	jge    c0036460 <__multadd+0x80>
c0036443:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036446:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0036449:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c003644d:	83 c0 01             	add    $0x1,%eax
c0036450:	89 47 10             	mov    %eax,0x10(%edi)
c0036453:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036456:	83 c4 2c             	add    $0x2c,%esp
c0036459:	5b                   	pop    %ebx
c003645a:	5e                   	pop    %esi
c003645b:	5f                   	pop    %edi
c003645c:	5d                   	pop    %ebp
c003645d:	c3                   	ret    
c003645e:	66 90                	xchg   %ax,%ax
c0036460:	8b 40 04             	mov    0x4(%eax),%eax
c0036463:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036466:	83 c0 01             	add    $0x1,%eax
c0036469:	89 44 24 04          	mov    %eax,0x4(%esp)
c003646d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036470:	89 04 24             	mov    %eax,(%esp)
c0036473:	e8 a8 fe ff ff       	call   c0036320 <_Balloc>
c0036478:	89 c3                	mov    %eax,%ebx
c003647a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003647d:	8b 40 10             	mov    0x10(%eax),%eax
c0036480:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0036487:	89 44 24 08          	mov    %eax,0x8(%esp)
c003648b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003648e:	83 c0 0c             	add    $0xc,%eax
c0036491:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036495:	8d 43 0c             	lea    0xc(%ebx),%eax
c0036498:	89 04 24             	mov    %eax,(%esp)
c003649b:	e8 54 c0 ff ff       	call   c00324f4 <memcpy>
c00364a0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00364a3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00364a6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00364a9:	8b 50 04             	mov    0x4(%eax),%edx
c00364ac:	8b 45 08             	mov    0x8(%ebp),%eax
c00364af:	8b 40 4c             	mov    0x4c(%eax),%eax
c00364b2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00364b5:	8b 10                	mov    (%eax),%edx
c00364b7:	89 17                	mov    %edx,(%edi)
c00364b9:	89 38                	mov    %edi,(%eax)
c00364bb:	eb 86                	jmp    c0036443 <__multadd+0x63>
c00364bd:	8d 76 00             	lea    0x0(%esi),%esi

c00364c0 <__s2b>:
c00364c0:	55                   	push   %ebp
c00364c1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c00364c6:	89 e5                	mov    %esp,%ebp
c00364c8:	57                   	push   %edi
c00364c9:	56                   	push   %esi
c00364ca:	53                   	push   %ebx
c00364cb:	83 ec 2c             	sub    $0x2c,%esp
c00364ce:	8b 45 14             	mov    0x14(%ebp),%eax
c00364d1:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00364d4:	8b 75 0c             	mov    0xc(%ebp),%esi
c00364d7:	8d 48 08             	lea    0x8(%eax),%ecx
c00364da:	89 c8                	mov    %ecx,%eax
c00364dc:	f7 ea                	imul   %edx
c00364de:	c1 f9 1f             	sar    $0x1f,%ecx
c00364e1:	d1 fa                	sar    %edx
c00364e3:	29 ca                	sub    %ecx,%edx
c00364e5:	83 fa 01             	cmp    $0x1,%edx
c00364e8:	0f 8e be 00 00 00    	jle    c00365ac <__s2b+0xec>
c00364ee:	b8 01 00 00 00       	mov    $0x1,%eax
c00364f3:	31 c9                	xor    %ecx,%ecx
c00364f5:	8d 76 00             	lea    0x0(%esi),%esi
c00364f8:	01 c0                	add    %eax,%eax
c00364fa:	83 c1 01             	add    $0x1,%ecx
c00364fd:	39 c2                	cmp    %eax,%edx
c00364ff:	7f f7                	jg     c00364f8 <__s2b+0x38>
c0036501:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036505:	89 1c 24             	mov    %ebx,(%esp)
c0036508:	e8 13 fe ff ff       	call   c0036320 <_Balloc>
c003650d:	8b 55 18             	mov    0x18(%ebp),%edx
c0036510:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0036514:	89 50 14             	mov    %edx,0x14(%eax)
c0036517:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c003651e:	0f 8e 7c 00 00 00    	jle    c00365a0 <__s2b+0xe0>
c0036524:	8d 4e 09             	lea    0x9(%esi),%ecx
c0036527:	03 75 10             	add    0x10(%ebp),%esi
c003652a:	89 cf                	mov    %ecx,%edi
c003652c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003652f:	90                   	nop
c0036530:	83 c7 01             	add    $0x1,%edi
c0036533:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0036537:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003653e:	00 
c003653f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036543:	89 1c 24             	mov    %ebx,(%esp)
c0036546:	83 ea 30             	sub    $0x30,%edx
c0036549:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003654d:	e8 8e fe ff ff       	call   c00363e0 <__multadd>
c0036552:	39 f7                	cmp    %esi,%edi
c0036554:	75 da                	jne    c0036530 <__s2b+0x70>
c0036556:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036559:	8b 7d 10             	mov    0x10(%ebp),%edi
c003655c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0036560:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036563:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0036566:	7e 2e                	jle    c0036596 <__s2b+0xd6>
c0036568:	8b 7d 14             	mov    0x14(%ebp),%edi
c003656b:	29 cf                	sub    %ecx,%edi
c003656d:	01 f7                	add    %esi,%edi
c003656f:	90                   	nop
c0036570:	83 c6 01             	add    $0x1,%esi
c0036573:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0036577:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003657e:	00 
c003657f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036583:	89 1c 24             	mov    %ebx,(%esp)
c0036586:	83 ea 30             	sub    $0x30,%edx
c0036589:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003658d:	e8 4e fe ff ff       	call   c00363e0 <__multadd>
c0036592:	39 fe                	cmp    %edi,%esi
c0036594:	75 da                	jne    c0036570 <__s2b+0xb0>
c0036596:	83 c4 2c             	add    $0x2c,%esp
c0036599:	5b                   	pop    %ebx
c003659a:	5e                   	pop    %esi
c003659b:	5f                   	pop    %edi
c003659c:	5d                   	pop    %ebp
c003659d:	c3                   	ret    
c003659e:	66 90                	xchg   %ax,%ax
c00365a0:	83 c6 0a             	add    $0xa,%esi
c00365a3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c00365aa:	eb b4                	jmp    c0036560 <__s2b+0xa0>
c00365ac:	31 c9                	xor    %ecx,%ecx
c00365ae:	e9 4e ff ff ff       	jmp    c0036501 <__s2b+0x41>
c00365b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00365b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365c0 <__hi0bits>:
c00365c0:	55                   	push   %ebp
c00365c1:	31 c9                	xor    %ecx,%ecx
c00365c3:	89 e5                	mov    %esp,%ebp
c00365c5:	8b 55 08             	mov    0x8(%ebp),%edx
c00365c8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c00365ce:	75 05                	jne    c00365d5 <__hi0bits+0x15>
c00365d0:	c1 e2 10             	shl    $0x10,%edx
c00365d3:	b1 10                	mov    $0x10,%cl
c00365d5:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c00365db:	75 06                	jne    c00365e3 <__hi0bits+0x23>
c00365dd:	83 c1 08             	add    $0x8,%ecx
c00365e0:	c1 e2 08             	shl    $0x8,%edx
c00365e3:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c00365e9:	75 06                	jne    c00365f1 <__hi0bits+0x31>
c00365eb:	83 c1 04             	add    $0x4,%ecx
c00365ee:	c1 e2 04             	shl    $0x4,%edx
c00365f1:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c00365f7:	75 06                	jne    c00365ff <__hi0bits+0x3f>
c00365f9:	83 c1 02             	add    $0x2,%ecx
c00365fc:	c1 e2 02             	shl    $0x2,%edx
c00365ff:	85 d2                	test   %edx,%edx
c0036601:	89 c8                	mov    %ecx,%eax
c0036603:	78 0d                	js     c0036612 <__hi0bits+0x52>
c0036605:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c003660b:	b8 20 00 00 00       	mov    $0x20,%eax
c0036610:	75 06                	jne    c0036618 <__hi0bits+0x58>
c0036612:	5d                   	pop    %ebp
c0036613:	c3                   	ret    
c0036614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036618:	8d 41 01             	lea    0x1(%ecx),%eax
c003661b:	5d                   	pop    %ebp
c003661c:	c3                   	ret    
c003661d:	8d 76 00             	lea    0x0(%esi),%esi

c0036620 <__lo0bits>:
c0036620:	55                   	push   %ebp
c0036621:	89 e5                	mov    %esp,%ebp
c0036623:	53                   	push   %ebx
c0036624:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036627:	8b 13                	mov    (%ebx),%edx
c0036629:	f6 c2 07             	test   $0x7,%dl
c003662c:	74 1a                	je     c0036648 <__lo0bits+0x28>
c003662e:	31 c0                	xor    %eax,%eax
c0036630:	f6 c2 01             	test   $0x1,%dl
c0036633:	75 0f                	jne    c0036644 <__lo0bits+0x24>
c0036635:	f6 c2 02             	test   $0x2,%dl
c0036638:	75 56                	jne    c0036690 <__lo0bits+0x70>
c003663a:	c1 ea 02             	shr    $0x2,%edx
c003663d:	b8 02 00 00 00       	mov    $0x2,%eax
c0036642:	89 13                	mov    %edx,(%ebx)
c0036644:	5b                   	pop    %ebx
c0036645:	5d                   	pop    %ebp
c0036646:	c3                   	ret    
c0036647:	90                   	nop
c0036648:	31 c9                	xor    %ecx,%ecx
c003664a:	66 85 d2             	test   %dx,%dx
c003664d:	75 05                	jne    c0036654 <__lo0bits+0x34>
c003664f:	c1 ea 10             	shr    $0x10,%edx
c0036652:	b1 10                	mov    $0x10,%cl
c0036654:	84 d2                	test   %dl,%dl
c0036656:	75 06                	jne    c003665e <__lo0bits+0x3e>
c0036658:	83 c1 08             	add    $0x8,%ecx
c003665b:	c1 ea 08             	shr    $0x8,%edx
c003665e:	f6 c2 0f             	test   $0xf,%dl
c0036661:	75 06                	jne    c0036669 <__lo0bits+0x49>
c0036663:	83 c1 04             	add    $0x4,%ecx
c0036666:	c1 ea 04             	shr    $0x4,%edx
c0036669:	f6 c2 03             	test   $0x3,%dl
c003666c:	75 06                	jne    c0036674 <__lo0bits+0x54>
c003666e:	83 c1 02             	add    $0x2,%ecx
c0036671:	c1 ea 02             	shr    $0x2,%edx
c0036674:	f6 c2 01             	test   $0x1,%dl
c0036677:	75 0c                	jne    c0036685 <__lo0bits+0x65>
c0036679:	d1 ea                	shr    %edx
c003667b:	b8 20 00 00 00       	mov    $0x20,%eax
c0036680:	74 c2                	je     c0036644 <__lo0bits+0x24>
c0036682:	83 c1 01             	add    $0x1,%ecx
c0036685:	89 13                	mov    %edx,(%ebx)
c0036687:	89 c8                	mov    %ecx,%eax
c0036689:	5b                   	pop    %ebx
c003668a:	5d                   	pop    %ebp
c003668b:	c3                   	ret    
c003668c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036690:	d1 ea                	shr    %edx
c0036692:	b0 01                	mov    $0x1,%al
c0036694:	89 13                	mov    %edx,(%ebx)
c0036696:	5b                   	pop    %ebx
c0036697:	5d                   	pop    %ebp
c0036698:	c3                   	ret    
c0036699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00366a0 <__i2b>:
c00366a0:	55                   	push   %ebp
c00366a1:	89 e5                	mov    %esp,%ebp
c00366a3:	83 ec 18             	sub    $0x18,%esp
c00366a6:	8b 45 08             	mov    0x8(%ebp),%eax
c00366a9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366b0:	00 
c00366b1:	89 04 24             	mov    %eax,(%esp)
c00366b4:	e8 67 fc ff ff       	call   c0036320 <_Balloc>
c00366b9:	8b 55 0c             	mov    0xc(%ebp),%edx
c00366bc:	89 50 14             	mov    %edx,0x14(%eax)
c00366bf:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00366c6:	c9                   	leave  
c00366c7:	c3                   	ret    
c00366c8:	90                   	nop
c00366c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00366d0 <__multiply>:
c00366d0:	55                   	push   %ebp
c00366d1:	89 e5                	mov    %esp,%ebp
c00366d3:	57                   	push   %edi
c00366d4:	56                   	push   %esi
c00366d5:	53                   	push   %ebx
c00366d6:	83 ec 3c             	sub    $0x3c,%esp
c00366d9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00366dc:	8b 45 10             	mov    0x10(%ebp),%eax
c00366df:	8b 7e 10             	mov    0x10(%esi),%edi
c00366e2:	8b 58 10             	mov    0x10(%eax),%ebx
c00366e5:	39 df                	cmp    %ebx,%edi
c00366e7:	7d 0e                	jge    c00366f7 <__multiply+0x27>
c00366e9:	89 f8                	mov    %edi,%eax
c00366eb:	89 df                	mov    %ebx,%edi
c00366ed:	89 c3                	mov    %eax,%ebx
c00366ef:	89 f0                	mov    %esi,%eax
c00366f1:	8b 75 10             	mov    0x10(%ebp),%esi
c00366f4:	89 45 10             	mov    %eax,0x10(%ebp)
c00366f7:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c00366fa:	3b 46 08             	cmp    0x8(%esi),%eax
c00366fd:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036700:	0f 9f c0             	setg   %al
c0036703:	0f b6 c0             	movzbl %al,%eax
c0036706:	03 46 04             	add    0x4(%esi),%eax
c0036709:	89 44 24 04          	mov    %eax,0x4(%esp)
c003670d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036710:	89 04 24             	mov    %eax,(%esp)
c0036713:	e8 08 fc ff ff       	call   c0036320 <_Balloc>
c0036718:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003671b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003671e:	8d 40 14             	lea    0x14(%eax),%eax
c0036721:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036724:	89 d1                	mov    %edx,%ecx
c0036726:	39 c8                	cmp    %ecx,%eax
c0036728:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003672b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003672e:	73 15                	jae    c0036745 <__multiply+0x75>
c0036730:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0036733:	90                   	nop
c0036734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036738:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003673e:	83 c0 04             	add    $0x4,%eax
c0036741:	39 c2                	cmp    %eax,%edx
c0036743:	77 f3                	ja     c0036738 <__multiply+0x68>
c0036745:	8d 46 14             	lea    0x14(%esi),%eax
c0036748:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003674b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003674e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036751:	8b 45 10             	mov    0x10(%ebp),%eax
c0036754:	83 c0 14             	add    $0x14,%eax
c0036757:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003675a:	39 f8                	cmp    %edi,%eax
c003675c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003675f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036762:	0f 83 e8 00 00 00    	jae    c0036850 <__multiply+0x180>
c0036768:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003676b:	8b 00                	mov    (%eax),%eax
c003676d:	0f b7 f8             	movzwl %ax,%edi
c0036770:	85 ff                	test   %edi,%edi
c0036772:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036775:	74 5a                	je     c00367d1 <__multiply+0x101>
c0036777:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003677a:	31 db                	xor    %ebx,%ebx
c003677c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003677f:	eb 09                	jmp    c003678a <__multiply+0xba>
c0036781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036788:	89 fa                	mov    %edi,%edx
c003678a:	8b 0e                	mov    (%esi),%ecx
c003678c:	83 c6 04             	add    $0x4,%esi
c003678f:	0f b7 3a             	movzwl (%edx),%edi
c0036792:	0f b7 c1             	movzwl %cx,%eax
c0036795:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036799:	c1 e9 10             	shr    $0x10,%ecx
c003679c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00367a0:	01 f8                	add    %edi,%eax
c00367a2:	01 d8                	add    %ebx,%eax
c00367a4:	8b 1a                	mov    (%edx),%ebx
c00367a6:	8d 7a 04             	lea    0x4(%edx),%edi
c00367a9:	c1 eb 10             	shr    $0x10,%ebx
c00367ac:	01 d9                	add    %ebx,%ecx
c00367ae:	89 c3                	mov    %eax,%ebx
c00367b0:	c1 eb 10             	shr    $0x10,%ebx
c00367b3:	0f b7 c0             	movzwl %ax,%eax
c00367b6:	01 d9                	add    %ebx,%ecx
c00367b8:	89 cb                	mov    %ecx,%ebx
c00367ba:	c1 e1 10             	shl    $0x10,%ecx
c00367bd:	09 c1                	or     %eax,%ecx
c00367bf:	c1 eb 10             	shr    $0x10,%ebx
c00367c2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c00367c5:	89 0a                	mov    %ecx,(%edx)
c00367c7:	77 bf                	ja     c0036788 <__multiply+0xb8>
c00367c9:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00367cc:	89 5a 04             	mov    %ebx,0x4(%edx)
c00367cf:	8b 00                	mov    (%eax),%eax
c00367d1:	c1 e8 10             	shr    $0x10,%eax
c00367d4:	85 c0                	test   %eax,%eax
c00367d6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00367d9:	74 61                	je     c003683c <__multiply+0x16c>
c00367db:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00367de:	31 ff                	xor    %edi,%edi
c00367e0:	89 fe                	mov    %edi,%esi
c00367e2:	8b 10                	mov    (%eax),%edx
c00367e4:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00367e7:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00367ea:	89 d3                	mov    %edx,%ebx
c00367ec:	eb 05                	jmp    c00367f3 <__multiply+0x123>
c00367ee:	66 90                	xchg   %ax,%ax
c00367f0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00367f3:	0f b7 08             	movzwl (%eax),%ecx
c00367f6:	c1 eb 10             	shr    $0x10,%ebx
c00367f9:	0f b7 d2             	movzwl %dx,%edx
c00367fc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036800:	83 c0 04             	add    $0x4,%eax
c0036803:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036806:	01 f7                	add    %esi,%edi
c0036808:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003680b:	89 fb                	mov    %edi,%ebx
c003680d:	c1 e3 10             	shl    $0x10,%ebx
c0036810:	09 d3                	or     %edx,%ebx
c0036812:	89 1e                	mov    %ebx,(%esi)
c0036814:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036817:	8d 4e 04             	lea    0x4(%esi),%ecx
c003681a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003681e:	c1 ef 10             	shr    $0x10,%edi
c0036821:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036825:	0f b7 f3             	movzwl %bx,%esi
c0036828:	01 f2                	add    %esi,%edx
c003682a:	01 fa                	add    %edi,%edx
c003682c:	89 d6                	mov    %edx,%esi
c003682e:	c1 ee 10             	shr    $0x10,%esi
c0036831:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036834:	77 ba                	ja     c00367f0 <__multiply+0x120>
c0036836:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036839:	89 50 04             	mov    %edx,0x4(%eax)
c003683c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036840:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036843:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036847:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003684a:	0f 87 18 ff ff ff    	ja     c0036768 <__multiply+0x98>
c0036850:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036853:	85 f6                	test   %esi,%esi
c0036855:	7e 29                	jle    c0036880 <__multiply+0x1b0>
c0036857:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003685a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003685d:	85 db                	test   %ebx,%ebx
c003685f:	75 1f                	jne    c0036880 <__multiply+0x1b0>
c0036861:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036864:	89 d0                	mov    %edx,%eax
c0036866:	c1 e0 02             	shl    $0x2,%eax
c0036869:	29 c7                	sub    %eax,%edi
c003686b:	89 f8                	mov    %edi,%eax
c003686d:	eb 09                	jmp    c0036878 <__multiply+0x1a8>
c003686f:	90                   	nop
c0036870:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036874:	85 c9                	test   %ecx,%ecx
c0036876:	75 05                	jne    c003687d <__multiply+0x1ad>
c0036878:	83 ea 01             	sub    $0x1,%edx
c003687b:	75 f3                	jne    c0036870 <__multiply+0x1a0>
c003687d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036880:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036883:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036886:	89 78 10             	mov    %edi,0x10(%eax)
c0036889:	83 c4 3c             	add    $0x3c,%esp
c003688c:	5b                   	pop    %ebx
c003688d:	5e                   	pop    %esi
c003688e:	5f                   	pop    %edi
c003688f:	5d                   	pop    %ebp
c0036890:	c3                   	ret    
c0036891:	eb 0d                	jmp    c00368a0 <__pow5mult>
c0036893:	90                   	nop
c0036894:	90                   	nop
c0036895:	90                   	nop
c0036896:	90                   	nop
c0036897:	90                   	nop
c0036898:	90                   	nop
c0036899:	90                   	nop
c003689a:	90                   	nop
c003689b:	90                   	nop
c003689c:	90                   	nop
c003689d:	90                   	nop
c003689e:	90                   	nop
c003689f:	90                   	nop

c00368a0 <__pow5mult>:
c00368a0:	55                   	push   %ebp
c00368a1:	89 e5                	mov    %esp,%ebp
c00368a3:	57                   	push   %edi
c00368a4:	56                   	push   %esi
c00368a5:	53                   	push   %ebx
c00368a6:	83 ec 2c             	sub    $0x2c,%esp
c00368a9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00368ac:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00368af:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00368b2:	89 d8                	mov    %ebx,%eax
c00368b4:	83 e0 03             	and    $0x3,%eax
c00368b7:	0f 85 a3 00 00 00    	jne    c0036960 <__pow5mult+0xc0>
c00368bd:	c1 fb 02             	sar    $0x2,%ebx
c00368c0:	85 db                	test   %ebx,%ebx
c00368c2:	74 5c                	je     c0036920 <__pow5mult+0x80>
c00368c4:	8b 71 48             	mov    0x48(%ecx),%esi
c00368c7:	85 f6                	test   %esi,%esi
c00368c9:	0f 84 bd 00 00 00    	je     c003698c <__pow5mult+0xec>
c00368cf:	f6 c3 01             	test   $0x1,%bl
c00368d2:	75 15                	jne    c00368e9 <__pow5mult+0x49>
c00368d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368d8:	d1 fb                	sar    %ebx
c00368da:	74 44                	je     c0036920 <__pow5mult+0x80>
c00368dc:	8b 06                	mov    (%esi),%eax
c00368de:	85 c0                	test   %eax,%eax
c00368e0:	74 4e                	je     c0036930 <__pow5mult+0x90>
c00368e2:	89 c6                	mov    %eax,%esi
c00368e4:	f6 c3 01             	test   $0x1,%bl
c00368e7:	74 ef                	je     c00368d8 <__pow5mult+0x38>
c00368e9:	89 0c 24             	mov    %ecx,(%esp)
c00368ec:	89 74 24 08          	mov    %esi,0x8(%esp)
c00368f0:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00368f4:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00368f7:	e8 d4 fd ff ff       	call   c00366d0 <__multiply>
c00368fc:	85 ff                	test   %edi,%edi
c00368fe:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036901:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036904:	74 52                	je     c0036958 <__pow5mult+0xb8>
c0036906:	8b 57 04             	mov    0x4(%edi),%edx
c0036909:	d1 fb                	sar    %ebx
c003690b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003690e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036911:	8b 10                	mov    (%eax),%edx
c0036913:	89 17                	mov    %edx,(%edi)
c0036915:	89 38                	mov    %edi,(%eax)
c0036917:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003691a:	75 c0                	jne    c00368dc <__pow5mult+0x3c>
c003691c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036920:	83 c4 2c             	add    $0x2c,%esp
c0036923:	89 f8                	mov    %edi,%eax
c0036925:	5b                   	pop    %ebx
c0036926:	5e                   	pop    %esi
c0036927:	5f                   	pop    %edi
c0036928:	5d                   	pop    %ebp
c0036929:	c3                   	ret    
c003692a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036930:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036934:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036938:	89 0c 24             	mov    %ecx,(%esp)
c003693b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003693e:	e8 8d fd ff ff       	call   c00366d0 <__multiply>
c0036943:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036946:	89 06                	mov    %eax,(%esi)
c0036948:	89 c6                	mov    %eax,%esi
c003694a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036950:	eb 92                	jmp    c00368e4 <__pow5mult+0x44>
c0036952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036958:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003695b:	e9 78 ff ff ff       	jmp    c00368d8 <__pow5mult+0x38>
c0036960:	8b 04 85 3c 97 03 c0 	mov    -0x3ffc68c4(,%eax,4),%eax
c0036967:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003696b:	89 0c 24             	mov    %ecx,(%esp)
c003696e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036975:	00 
c0036976:	89 44 24 08          	mov    %eax,0x8(%esp)
c003697a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003697d:	e8 5e fa ff ff       	call   c00363e0 <__multadd>
c0036982:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036985:	89 c7                	mov    %eax,%edi
c0036987:	e9 31 ff ff ff       	jmp    c00368bd <__pow5mult+0x1d>
c003698c:	89 0c 24             	mov    %ecx,(%esp)
c003698f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036996:	00 
c0036997:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003699a:	e8 81 f9 ff ff       	call   c0036320 <_Balloc>
c003699f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00369a2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00369a9:	89 c6                	mov    %eax,%esi
c00369ab:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00369b2:	89 41 48             	mov    %eax,0x48(%ecx)
c00369b5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00369bb:	e9 0f ff ff ff       	jmp    c00368cf <__pow5mult+0x2f>

c00369c0 <__lshift>:
c00369c0:	55                   	push   %ebp
c00369c1:	89 e5                	mov    %esp,%ebp
c00369c3:	57                   	push   %edi
c00369c4:	56                   	push   %esi
c00369c5:	53                   	push   %ebx
c00369c6:	83 ec 2c             	sub    $0x2c,%esp
c00369c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00369cc:	8b 75 10             	mov    0x10(%ebp),%esi
c00369cf:	89 c7                	mov    %eax,%edi
c00369d1:	8b 50 04             	mov    0x4(%eax),%edx
c00369d4:	8b 40 10             	mov    0x10(%eax),%eax
c00369d7:	89 f3                	mov    %esi,%ebx
c00369d9:	c1 fb 05             	sar    $0x5,%ebx
c00369dc:	01 d8                	add    %ebx,%eax
c00369de:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00369e1:	83 c0 01             	add    $0x1,%eax
c00369e4:	89 c1                	mov    %eax,%ecx
c00369e6:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00369e9:	8b 47 08             	mov    0x8(%edi),%eax
c00369ec:	39 c1                	cmp    %eax,%ecx
c00369ee:	7e 09                	jle    c00369f9 <__lshift+0x39>
c00369f0:	01 c0                	add    %eax,%eax
c00369f2:	83 c2 01             	add    $0x1,%edx
c00369f5:	39 c1                	cmp    %eax,%ecx
c00369f7:	7f f7                	jg     c00369f0 <__lshift+0x30>
c00369f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00369fc:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036a00:	89 04 24             	mov    %eax,(%esp)
c0036a03:	e8 18 f9 ff ff       	call   c0036320 <_Balloc>
c0036a08:	85 db                	test   %ebx,%ebx
c0036a0a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036a0d:	8d 50 14             	lea    0x14(%eax),%edx
c0036a10:	7e 17                	jle    c0036a29 <__lshift+0x69>
c0036a12:	31 c0                	xor    %eax,%eax
c0036a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a18:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c0036a1f:	83 c0 01             	add    $0x1,%eax
c0036a22:	39 d8                	cmp    %ebx,%eax
c0036a24:	75 f2                	jne    c0036a18 <__lshift+0x58>
c0036a26:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036a29:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036a2c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a2f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036a32:	83 c0 14             	add    $0x14,%eax
c0036a35:	83 e6 1f             	and    $0x1f,%esi
c0036a38:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0036a3b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c0036a3e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036a41:	74 7d                	je     c0036ac0 <__lshift+0x100>
c0036a43:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c0036a4a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c0036a4d:	31 f6                	xor    %esi,%esi
c0036a4f:	eb 09                	jmp    c0036a5a <__lshift+0x9a>
c0036a51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036a58:	89 fa                	mov    %edi,%edx
c0036a5a:	8b 18                	mov    (%eax),%ebx
c0036a5c:	83 c0 04             	add    $0x4,%eax
c0036a5f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036a63:	8d 7a 04             	lea    0x4(%edx),%edi
c0036a66:	d3 e3                	shl    %cl,%ebx
c0036a68:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c0036a6c:	09 f3                	or     %esi,%ebx
c0036a6e:	89 1a                	mov    %ebx,(%edx)
c0036a70:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036a73:	d3 ee                	shr    %cl,%esi
c0036a75:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036a78:	77 de                	ja     c0036a58 <__lshift+0x98>
c0036a7a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036a7d:	89 72 04             	mov    %esi,0x4(%edx)
c0036a80:	83 c0 02             	add    $0x2,%eax
c0036a83:	85 f6                	test   %esi,%esi
c0036a85:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036a89:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036a8c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036a8f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036a92:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036a95:	83 e8 01             	sub    $0x1,%eax
c0036a98:	89 47 10             	mov    %eax,0x10(%edi)
c0036a9b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a9e:	8b 50 04             	mov    0x4(%eax),%edx
c0036aa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0036aa4:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036aa7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036aaa:	8b 10                	mov    (%eax),%edx
c0036aac:	89 16                	mov    %edx,(%esi)
c0036aae:	89 30                	mov    %esi,(%eax)
c0036ab0:	83 c4 2c             	add    $0x2c,%esp
c0036ab3:	89 f8                	mov    %edi,%eax
c0036ab5:	5b                   	pop    %ebx
c0036ab6:	5e                   	pop    %esi
c0036ab7:	5f                   	pop    %edi
c0036ab8:	5d                   	pop    %ebp
c0036ab9:	c3                   	ret    
c0036aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036ac0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036ac3:	90                   	nop
c0036ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ac8:	83 c0 04             	add    $0x4,%eax
c0036acb:	8b 48 fc             	mov    -0x4(%eax),%ecx
c0036ace:	83 c2 04             	add    $0x4,%edx
c0036ad1:	39 c3                	cmp    %eax,%ebx
c0036ad3:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036ad6:	77 f0                	ja     c0036ac8 <__lshift+0x108>
c0036ad8:	eb b2                	jmp    c0036a8c <__lshift+0xcc>
c0036ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036ae0 <__mcmp>:
c0036ae0:	55                   	push   %ebp
c0036ae1:	89 e5                	mov    %esp,%ebp
c0036ae3:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036ae6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036ae9:	53                   	push   %ebx
c0036aea:	8b 41 10             	mov    0x10(%ecx),%eax
c0036aed:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036af0:	29 d8                	sub    %ebx,%eax
c0036af2:	85 c0                	test   %eax,%eax
c0036af4:	75 27                	jne    c0036b1d <__mcmp+0x3d>
c0036af6:	c1 e3 02             	shl    $0x2,%ebx
c0036af9:	83 c1 14             	add    $0x14,%ecx
c0036afc:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c0036aff:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036b03:	eb 07                	jmp    c0036b0c <__mcmp+0x2c>
c0036b05:	8d 76 00             	lea    0x0(%esi),%esi
c0036b08:	39 c1                	cmp    %eax,%ecx
c0036b0a:	73 14                	jae    c0036b20 <__mcmp+0x40>
c0036b0c:	83 ea 04             	sub    $0x4,%edx
c0036b0f:	83 e8 04             	sub    $0x4,%eax
c0036b12:	8b 1a                	mov    (%edx),%ebx
c0036b14:	39 18                	cmp    %ebx,(%eax)
c0036b16:	74 f0                	je     c0036b08 <__mcmp+0x28>
c0036b18:	19 c0                	sbb    %eax,%eax
c0036b1a:	83 c8 01             	or     $0x1,%eax
c0036b1d:	5b                   	pop    %ebx
c0036b1e:	5d                   	pop    %ebp
c0036b1f:	c3                   	ret    
c0036b20:	31 c0                	xor    %eax,%eax
c0036b22:	5b                   	pop    %ebx
c0036b23:	5d                   	pop    %ebp
c0036b24:	c3                   	ret    
c0036b25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036b30 <__mdiff>:
c0036b30:	55                   	push   %ebp
c0036b31:	89 e5                	mov    %esp,%ebp
c0036b33:	57                   	push   %edi
c0036b34:	56                   	push   %esi
c0036b35:	53                   	push   %ebx
c0036b36:	83 ec 2c             	sub    $0x2c,%esp
c0036b39:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036b3c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036b3f:	89 34 24             	mov    %esi,(%esp)
c0036b42:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036b46:	e8 95 ff ff ff       	call   c0036ae0 <__mcmp>
c0036b4b:	85 c0                	test   %eax,%eax
c0036b4d:	0f 84 25 01 00 00    	je     c0036c78 <__mdiff+0x148>
c0036b53:	0f 88 0f 01 00 00    	js     c0036c68 <__mdiff+0x138>
c0036b59:	31 ff                	xor    %edi,%edi
c0036b5b:	8b 46 04             	mov    0x4(%esi),%eax
c0036b5e:	83 c6 14             	add    $0x14,%esi
c0036b61:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b65:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b68:	89 04 24             	mov    %eax,(%esp)
c0036b6b:	e8 b0 f7 ff ff       	call   c0036320 <_Balloc>
c0036b70:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036b73:	89 c2                	mov    %eax,%edx
c0036b75:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036b78:	89 78 0c             	mov    %edi,0xc(%eax)
c0036b7b:	8b 46 fc             	mov    -0x4(%esi),%eax
c0036b7e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036b81:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b84:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036b87:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036b8a:	8b 43 10             	mov    0x10(%ebx),%eax
c0036b8d:	31 db                	xor    %ebx,%ebx
c0036b8f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036b92:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b95:	89 d0                	mov    %edx,%eax
c0036b97:	83 c0 14             	add    $0x14,%eax
c0036b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036ba0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036ba3:	83 c0 04             	add    $0x4,%eax
c0036ba6:	83 c1 04             	add    $0x4,%ecx
c0036ba9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c0036bad:	8b 3e                	mov    (%esi),%edi
c0036baf:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036bb2:	0f b7 d7             	movzwl %di,%edx
c0036bb5:	01 da                	add    %ebx,%edx
c0036bb7:	0f b7 de             	movzwl %si,%ebx
c0036bba:	29 da                	sub    %ebx,%edx
c0036bbc:	c1 ef 10             	shr    $0x10,%edi
c0036bbf:	89 d3                	mov    %edx,%ebx
c0036bc1:	c1 ee 10             	shr    $0x10,%esi
c0036bc4:	0f b7 d2             	movzwl %dx,%edx
c0036bc7:	c1 fb 10             	sar    $0x10,%ebx
c0036bca:	29 f7                	sub    %esi,%edi
c0036bcc:	01 df                	add    %ebx,%edi
c0036bce:	89 fb                	mov    %edi,%ebx
c0036bd0:	c1 e7 10             	shl    $0x10,%edi
c0036bd3:	09 d7                	or     %edx,%edi
c0036bd5:	c1 fb 10             	sar    $0x10,%ebx
c0036bd8:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c0036bdb:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036bde:	77 c0                	ja     c0036ba0 <__mdiff+0x70>
c0036be0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036be3:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036be6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036be9:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0036bec:	39 f1                	cmp    %esi,%ecx
c0036bee:	76 3f                	jbe    c0036c2f <__mdiff+0xff>
c0036bf0:	8b 3e                	mov    (%esi),%edi
c0036bf2:	83 c6 04             	add    $0x4,%esi
c0036bf5:	83 c0 04             	add    $0x4,%eax
c0036bf8:	0f b7 d7             	movzwl %di,%edx
c0036bfb:	01 da                	add    %ebx,%edx
c0036bfd:	89 d3                	mov    %edx,%ebx
c0036bff:	0f b7 d2             	movzwl %dx,%edx
c0036c02:	c1 fb 10             	sar    $0x10,%ebx
c0036c05:	c1 ef 10             	shr    $0x10,%edi
c0036c08:	01 df                	add    %ebx,%edi
c0036c0a:	89 fb                	mov    %edi,%ebx
c0036c0c:	c1 e7 10             	shl    $0x10,%edi
c0036c0f:	09 d7                	or     %edx,%edi
c0036c11:	c1 fb 10             	sar    $0x10,%ebx
c0036c14:	39 f1                	cmp    %esi,%ecx
c0036c16:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036c19:	77 d5                	ja     c0036bf0 <__mdiff+0xc0>
c0036c1b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036c1e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036c21:	f7 d0                	not    %eax
c0036c23:	01 c8                	add    %ecx,%eax
c0036c25:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c28:	c1 e8 02             	shr    $0x2,%eax
c0036c2b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c0036c2f:	85 ff                	test   %edi,%edi
c0036c31:	75 23                	jne    c0036c56 <__mdiff+0x126>
c0036c33:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036c36:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c0036c3d:	29 d0                	sub    %edx,%eax
c0036c3f:	89 ca                	mov    %ecx,%edx
c0036c41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c48:	83 ea 01             	sub    $0x1,%edx
c0036c4b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036c4f:	85 c9                	test   %ecx,%ecx
c0036c51:	74 f5                	je     c0036c48 <__mdiff+0x118>
c0036c53:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c56:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036c59:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036c5c:	89 48 10             	mov    %ecx,0x10(%eax)
c0036c5f:	83 c4 2c             	add    $0x2c,%esp
c0036c62:	5b                   	pop    %ebx
c0036c63:	5e                   	pop    %esi
c0036c64:	5f                   	pop    %edi
c0036c65:	5d                   	pop    %ebp
c0036c66:	c3                   	ret    
c0036c67:	90                   	nop
c0036c68:	89 f0                	mov    %esi,%eax
c0036c6a:	bf 01 00 00 00       	mov    $0x1,%edi
c0036c6f:	89 de                	mov    %ebx,%esi
c0036c71:	89 c3                	mov    %eax,%ebx
c0036c73:	e9 e3 fe ff ff       	jmp    c0036b5b <__mdiff+0x2b>
c0036c78:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c7b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036c82:	00 
c0036c83:	89 04 24             	mov    %eax,(%esp)
c0036c86:	e8 95 f6 ff ff       	call   c0036320 <_Balloc>
c0036c8b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036c92:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036c99:	83 c4 2c             	add    $0x2c,%esp
c0036c9c:	5b                   	pop    %ebx
c0036c9d:	5e                   	pop    %esi
c0036c9e:	5f                   	pop    %edi
c0036c9f:	5d                   	pop    %ebp
c0036ca0:	c3                   	ret    
c0036ca1:	eb 0d                	jmp    c0036cb0 <__ulp>
c0036ca3:	90                   	nop
c0036ca4:	90                   	nop
c0036ca5:	90                   	nop
c0036ca6:	90                   	nop
c0036ca7:	90                   	nop
c0036ca8:	90                   	nop
c0036ca9:	90                   	nop
c0036caa:	90                   	nop
c0036cab:	90                   	nop
c0036cac:	90                   	nop
c0036cad:	90                   	nop
c0036cae:	90                   	nop
c0036caf:	90                   	nop

c0036cb0 <__ulp>:
c0036cb0:	55                   	push   %ebp
c0036cb1:	89 e5                	mov    %esp,%ebp
c0036cb3:	83 ec 08             	sub    $0x8,%esp
c0036cb6:	dd 45 08             	fldl   0x8(%ebp)
c0036cb9:	dd 5d f8             	fstpl  -0x8(%ebp)
c0036cbc:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0036cbf:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036cc5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c0036ccb:	85 c9                	test   %ecx,%ecx
c0036ccd:	7e 11                	jle    c0036ce0 <__ulp+0x30>
c0036ccf:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036cd2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036cd9:	dd 45 f8             	fldl   -0x8(%ebp)
c0036cdc:	c9                   	leave  
c0036cdd:	c3                   	ret    
c0036cde:	66 90                	xchg   %ax,%ax
c0036ce0:	f7 d9                	neg    %ecx
c0036ce2:	c1 f9 14             	sar    $0x14,%ecx
c0036ce5:	83 f9 13             	cmp    $0x13,%ecx
c0036ce8:	7e 26                	jle    c0036d10 <__ulp+0x60>
c0036cea:	83 f9 32             	cmp    $0x32,%ecx
c0036ced:	b8 01 00 00 00       	mov    $0x1,%eax
c0036cf2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036cf9:	7f 0b                	jg     c0036d06 <__ulp+0x56>
c0036cfb:	ba 33 00 00 00       	mov    $0x33,%edx
c0036d00:	29 ca                	sub    %ecx,%edx
c0036d02:	89 d1                	mov    %edx,%ecx
c0036d04:	d3 e0                	shl    %cl,%eax
c0036d06:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036d09:	dd 45 f8             	fldl   -0x8(%ebp)
c0036d0c:	c9                   	leave  
c0036d0d:	c3                   	ret    
c0036d0e:	66 90                	xchg   %ax,%ax
c0036d10:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036d15:	d3 f8                	sar    %cl,%eax
c0036d17:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0036d1a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036d21:	dd 45 f8             	fldl   -0x8(%ebp)
c0036d24:	c9                   	leave  
c0036d25:	c3                   	ret    
c0036d26:	8d 76 00             	lea    0x0(%esi),%esi
c0036d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036d30 <__b2d>:
c0036d30:	55                   	push   %ebp
c0036d31:	89 e5                	mov    %esp,%ebp
c0036d33:	57                   	push   %edi
c0036d34:	56                   	push   %esi
c0036d35:	53                   	push   %ebx
c0036d36:	83 ec 18             	sub    $0x18,%esp
c0036d39:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d3c:	8d 78 14             	lea    0x14(%eax),%edi
c0036d3f:	8b 40 10             	mov    0x10(%eax),%eax
c0036d42:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036d45:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036d48:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036d4b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036d4e:	89 34 24             	mov    %esi,(%esp)
c0036d51:	e8 6a f8 ff ff       	call   c00365c0 <__hi0bits>
c0036d56:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036d59:	ba 20 00 00 00       	mov    $0x20,%edx
c0036d5e:	29 c2                	sub    %eax,%edx
c0036d60:	83 f8 0a             	cmp    $0xa,%eax
c0036d63:	89 11                	mov    %edx,(%ecx)
c0036d65:	7f 41                	jg     c0036da8 <__b2d+0x78>
c0036d67:	b9 0b 00 00 00       	mov    $0xb,%ecx
c0036d6c:	89 f2                	mov    %esi,%edx
c0036d6e:	29 c1                	sub    %eax,%ecx
c0036d70:	d3 ea                	shr    %cl,%edx
c0036d72:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036d78:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0036d7b:	31 d2                	xor    %edx,%edx
c0036d7d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036d80:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036d87:	73 05                	jae    c0036d8e <__b2d+0x5e>
c0036d89:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036d8c:	d3 ea                	shr    %cl,%edx
c0036d8e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036d91:	d3 e6                	shl    %cl,%esi
c0036d93:	09 f2                	or     %esi,%edx
c0036d95:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036d98:	dd 45 e8             	fldl   -0x18(%ebp)
c0036d9b:	83 c4 18             	add    $0x18,%esp
c0036d9e:	5b                   	pop    %ebx
c0036d9f:	5e                   	pop    %esi
c0036da0:	5f                   	pop    %edi
c0036da1:	5d                   	pop    %ebp
c0036da2:	c3                   	ret    
c0036da3:	90                   	nop
c0036da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036da8:	31 d2                	xor    %edx,%edx
c0036daa:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036dad:	73 09                	jae    c0036db8 <__b2d+0x88>
c0036daf:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036db2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036db5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036db8:	89 c3                	mov    %eax,%ebx
c0036dba:	83 eb 0b             	sub    $0xb,%ebx
c0036dbd:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036dc0:	74 4e                	je     c0036e10 <__b2d+0xe0>
c0036dc2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036dc6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0036dcb:	29 c3                	sub    %eax,%ebx
c0036dcd:	89 d0                	mov    %edx,%eax
c0036dcf:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036dd6:	d3 e6                	shl    %cl,%esi
c0036dd8:	89 d9                	mov    %ebx,%ecx
c0036dda:	d3 e8                	shr    %cl,%eax
c0036ddc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036ddf:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036de5:	09 c6                	or     %eax,%esi
c0036de7:	31 c0                	xor    %eax,%eax
c0036de9:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036dec:	39 f9                	cmp    %edi,%ecx
c0036dee:	76 07                	jbe    c0036df7 <__b2d+0xc7>
c0036df0:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036df3:	89 d9                	mov    %ebx,%ecx
c0036df5:	d3 e8                	shr    %cl,%eax
c0036df7:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036dfb:	d3 e2                	shl    %cl,%edx
c0036dfd:	09 d0                	or     %edx,%eax
c0036dff:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036e02:	dd 45 e8             	fldl   -0x18(%ebp)
c0036e05:	83 c4 18             	add    $0x18,%esp
c0036e08:	5b                   	pop    %ebx
c0036e09:	5e                   	pop    %esi
c0036e0a:	5f                   	pop    %edi
c0036e0b:	5d                   	pop    %ebp
c0036e0c:	c3                   	ret    
c0036e0d:	8d 76 00             	lea    0x0(%esi),%esi
c0036e10:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036e16:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036e19:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036e1c:	dd 45 e8             	fldl   -0x18(%ebp)
c0036e1f:	83 c4 18             	add    $0x18,%esp
c0036e22:	5b                   	pop    %ebx
c0036e23:	5e                   	pop    %esi
c0036e24:	5f                   	pop    %edi
c0036e25:	5d                   	pop    %ebp
c0036e26:	c3                   	ret    
c0036e27:	89 f6                	mov    %esi,%esi
c0036e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036e30 <__d2b>:
c0036e30:	55                   	push   %ebp
c0036e31:	89 e5                	mov    %esp,%ebp
c0036e33:	57                   	push   %edi
c0036e34:	56                   	push   %esi
c0036e35:	53                   	push   %ebx
c0036e36:	83 ec 2c             	sub    $0x2c,%esp
c0036e39:	8b 45 08             	mov    0x8(%ebp),%eax
c0036e3c:	dd 45 0c             	fldl   0xc(%ebp)
c0036e3f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036e46:	00 
c0036e47:	dd 5d d0             	fstpl  -0x30(%ebp)
c0036e4a:	89 04 24             	mov    %eax,(%esp)
c0036e4d:	e8 ce f4 ff ff       	call   c0036320 <_Balloc>
c0036e52:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036e55:	89 c6                	mov    %eax,%esi
c0036e57:	89 d8                	mov    %ebx,%eax
c0036e59:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c0036e5f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036e64:	c1 eb 14             	shr    $0x14,%ebx
c0036e67:	85 db                	test   %ebx,%ebx
c0036e69:	74 05                	je     c0036e70 <__d2b+0x40>
c0036e6b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036e70:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036e73:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036e76:	85 c0                	test   %eax,%eax
c0036e78:	74 56                	je     c0036ed0 <__d2b+0xa0>
c0036e7a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036e7d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036e80:	89 04 24             	mov    %eax,(%esp)
c0036e83:	e8 98 f7 ff ff       	call   c0036620 <__lo0bits>
c0036e88:	85 c0                	test   %eax,%eax
c0036e8a:	0f 85 90 00 00 00    	jne    c0036f20 <__d2b+0xf0>
c0036e90:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036e93:	89 56 14             	mov    %edx,0x14(%esi)
c0036e96:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036e99:	83 fa 01             	cmp    $0x1,%edx
c0036e9c:	19 ff                	sbb    %edi,%edi
c0036e9e:	83 c7 02             	add    $0x2,%edi
c0036ea1:	85 db                	test   %ebx,%ebx
c0036ea3:	89 56 18             	mov    %edx,0x18(%esi)
c0036ea6:	89 7e 10             	mov    %edi,0x10(%esi)
c0036ea9:	74 49                	je     c0036ef4 <__d2b+0xc4>
c0036eab:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036eae:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036eb5:	89 11                	mov    %edx,(%ecx)
c0036eb7:	ba 35 00 00 00       	mov    $0x35,%edx
c0036ebc:	29 c2                	sub    %eax,%edx
c0036ebe:	8b 45 18             	mov    0x18(%ebp),%eax
c0036ec1:	89 10                	mov    %edx,(%eax)
c0036ec3:	83 c4 2c             	add    $0x2c,%esp
c0036ec6:	89 f0                	mov    %esi,%eax
c0036ec8:	5b                   	pop    %ebx
c0036ec9:	5e                   	pop    %esi
c0036eca:	5f                   	pop    %edi
c0036ecb:	5d                   	pop    %ebp
c0036ecc:	c3                   	ret    
c0036ecd:	8d 76 00             	lea    0x0(%esi),%esi
c0036ed0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036ed3:	bf 01 00 00 00       	mov    $0x1,%edi
c0036ed8:	89 04 24             	mov    %eax,(%esp)
c0036edb:	e8 40 f7 ff ff       	call   c0036620 <__lo0bits>
c0036ee0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036ee3:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c0036eea:	89 56 14             	mov    %edx,0x14(%esi)
c0036eed:	83 c0 20             	add    $0x20,%eax
c0036ef0:	85 db                	test   %ebx,%ebx
c0036ef2:	75 b7                	jne    c0036eab <__d2b+0x7b>
c0036ef4:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036ef7:	2d 32 04 00 00       	sub    $0x432,%eax
c0036efc:	89 01                	mov    %eax,(%ecx)
c0036efe:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036f02:	c1 e7 05             	shl    $0x5,%edi
c0036f05:	89 04 24             	mov    %eax,(%esp)
c0036f08:	e8 b3 f6 ff ff       	call   c00365c0 <__hi0bits>
c0036f0d:	29 c7                	sub    %eax,%edi
c0036f0f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036f12:	89 38                	mov    %edi,(%eax)
c0036f14:	83 c4 2c             	add    $0x2c,%esp
c0036f17:	89 f0                	mov    %esi,%eax
c0036f19:	5b                   	pop    %ebx
c0036f1a:	5e                   	pop    %esi
c0036f1b:	5f                   	pop    %edi
c0036f1c:	5d                   	pop    %ebp
c0036f1d:	c3                   	ret    
c0036f1e:	66 90                	xchg   %ax,%ax
c0036f20:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036f23:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036f28:	29 c1                	sub    %eax,%ecx
c0036f2a:	89 d7                	mov    %edx,%edi
c0036f2c:	d3 e7                	shl    %cl,%edi
c0036f2e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036f31:	09 f9                	or     %edi,%ecx
c0036f33:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036f36:	89 c1                	mov    %eax,%ecx
c0036f38:	d3 ea                	shr    %cl,%edx
c0036f3a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036f3d:	e9 57 ff ff ff       	jmp    c0036e99 <__d2b+0x69>
c0036f42:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036f49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036f50 <__ratio>:
c0036f50:	55                   	push   %ebp
c0036f51:	89 e5                	mov    %esp,%ebp
c0036f53:	56                   	push   %esi
c0036f54:	53                   	push   %ebx
c0036f55:	83 ec 30             	sub    $0x30,%esp
c0036f58:	8b 75 08             	mov    0x8(%ebp),%esi
c0036f5b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c0036f5e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036f61:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036f65:	89 34 24             	mov    %esi,(%esp)
c0036f68:	e8 c3 fd ff ff       	call   c0036d30 <__b2d>
c0036f6d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036f70:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036f74:	89 1c 24             	mov    %ebx,(%esp)
c0036f77:	dd 55 e0             	fstl   -0x20(%ebp)
c0036f7a:	dd 5d d8             	fstpl  -0x28(%ebp)
c0036f7d:	e8 ae fd ff ff       	call   c0036d30 <__b2d>
c0036f82:	8b 46 10             	mov    0x10(%esi),%eax
c0036f85:	2b 43 10             	sub    0x10(%ebx),%eax
c0036f88:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036f8b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c0036f8e:	c1 e0 05             	shl    $0x5,%eax
c0036f91:	01 d0                	add    %edx,%eax
c0036f93:	dd 55 d0             	fstl   -0x30(%ebp)
c0036f96:	85 c0                	test   %eax,%eax
c0036f98:	dd 45 d8             	fldl   -0x28(%ebp)
c0036f9b:	7e 1b                	jle    c0036fb8 <__ratio+0x68>
c0036f9d:	dd d8                	fstp   %st(0)
c0036f9f:	c1 e0 14             	shl    $0x14,%eax
c0036fa2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036fa5:	dd 45 e0             	fldl   -0x20(%ebp)
c0036fa8:	83 c4 30             	add    $0x30,%esp
c0036fab:	5b                   	pop    %ebx
c0036fac:	de f1                	fdivp  %st,%st(1)
c0036fae:	5e                   	pop    %esi
c0036faf:	5d                   	pop    %ebp
c0036fb0:	c3                   	ret    
c0036fb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036fb8:	dd d9                	fstp   %st(1)
c0036fba:	c1 e0 14             	shl    $0x14,%eax
c0036fbd:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036fc0:	dd 45 d0             	fldl   -0x30(%ebp)
c0036fc3:	83 c4 30             	add    $0x30,%esp
c0036fc6:	5b                   	pop    %ebx
c0036fc7:	de f9                	fdivrp %st,%st(1)
c0036fc9:	5e                   	pop    %esi
c0036fca:	5d                   	pop    %ebp
c0036fcb:	c3                   	ret    
c0036fcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036fd0 <_mprec_log10>:
c0036fd0:	55                   	push   %ebp
c0036fd1:	89 e5                	mov    %esp,%ebp
c0036fd3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036fd6:	83 f8 17             	cmp    $0x17,%eax
c0036fd9:	7e 1d                	jle    c0036ff8 <_mprec_log10+0x28>
c0036fdb:	d9 e8                	fld1   
c0036fdd:	d9 05 0c 97 03 c0    	flds   0xc003970c
c0036fe3:	90                   	nop
c0036fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036fe8:	83 e8 01             	sub    $0x1,%eax
c0036feb:	dc c9                	fmul   %st,%st(1)
c0036fed:	75 f9                	jne    c0036fe8 <_mprec_log10+0x18>
c0036fef:	dd d8                	fstp   %st(0)
c0036ff1:	5d                   	pop    %ebp
c0036ff2:	c3                   	ret    
c0036ff3:	90                   	nop
c0036ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ff8:	dd 04 c5 e0 97 03 c0 	fldl   -0x3ffc6820(,%eax,8)
c0036fff:	5d                   	pop    %ebp
c0037000:	c3                   	ret    
c0037001:	eb 0d                	jmp    c0037010 <__copybits>
c0037003:	90                   	nop
c0037004:	90                   	nop
c0037005:	90                   	nop
c0037006:	90                   	nop
c0037007:	90                   	nop
c0037008:	90                   	nop
c0037009:	90                   	nop
c003700a:	90                   	nop
c003700b:	90                   	nop
c003700c:	90                   	nop
c003700d:	90                   	nop
c003700e:	90                   	nop
c003700f:	90                   	nop

c0037010 <__copybits>:
c0037010:	55                   	push   %ebp
c0037011:	89 e5                	mov    %esp,%ebp
c0037013:	57                   	push   %edi
c0037014:	8b 7d 10             	mov    0x10(%ebp),%edi
c0037017:	56                   	push   %esi
c0037018:	8b 75 0c             	mov    0xc(%ebp),%esi
c003701b:	8b 45 08             	mov    0x8(%ebp),%eax
c003701e:	53                   	push   %ebx
c003701f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0037022:	8d 56 ff             	lea    -0x1(%esi),%edx
c0037025:	c1 fa 05             	sar    $0x5,%edx
c0037028:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003702c:	8d 57 14             	lea    0x14(%edi),%edx
c003702f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0037032:	39 da                	cmp    %ebx,%edx
c0037034:	73 34                	jae    c003706a <__copybits+0x5a>
c0037036:	89 c1                	mov    %eax,%ecx
c0037038:	83 c2 04             	add    $0x4,%edx
c003703b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003703e:	83 c1 04             	add    $0x4,%ecx
c0037041:	39 d3                	cmp    %edx,%ebx
c0037043:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0037046:	77 f0                	ja     c0037038 <__copybits+0x28>
c0037048:	8b 45 08             	mov    0x8(%ebp),%eax
c003704b:	29 fb                	sub    %edi,%ebx
c003704d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0037050:	c1 ea 02             	shr    $0x2,%edx
c0037053:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0037057:	39 c6                	cmp    %eax,%esi
c0037059:	76 13                	jbe    c003706e <__copybits+0x5e>
c003705b:	90                   	nop
c003705c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037060:	83 c0 04             	add    $0x4,%eax
c0037063:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003706a:	39 c6                	cmp    %eax,%esi
c003706c:	77 f2                	ja     c0037060 <__copybits+0x50>
c003706e:	5b                   	pop    %ebx
c003706f:	5e                   	pop    %esi
c0037070:	5f                   	pop    %edi
c0037071:	5d                   	pop    %ebp
c0037072:	c3                   	ret    
c0037073:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037079:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037080 <__any_on>:
c0037080:	55                   	push   %ebp
c0037081:	89 e5                	mov    %esp,%ebp
c0037083:	8b 45 08             	mov    0x8(%ebp),%eax
c0037086:	57                   	push   %edi
c0037087:	56                   	push   %esi
c0037088:	53                   	push   %ebx
c0037089:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003708c:	8d 50 14             	lea    0x14(%eax),%edx
c003708f:	8b 40 10             	mov    0x10(%eax),%eax
c0037092:	c1 fb 05             	sar    $0x5,%ebx
c0037095:	39 d8                	cmp    %ebx,%eax
c0037097:	7d 2f                	jge    c00370c8 <__any_on+0x48>
c0037099:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003709c:	39 da                	cmp    %ebx,%edx
c003709e:	73 1d                	jae    c00370bd <__any_on+0x3d>
c00370a0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00370a3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00370a6:	85 db                	test   %ebx,%ebx
c00370a8:	74 0f                	je     c00370b9 <__any_on+0x39>
c00370aa:	eb 44                	jmp    c00370f0 <__any_on+0x70>
c00370ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00370b0:	83 e8 04             	sub    $0x4,%eax
c00370b3:	8b 08                	mov    (%eax),%ecx
c00370b5:	85 c9                	test   %ecx,%ecx
c00370b7:	75 37                	jne    c00370f0 <__any_on+0x70>
c00370b9:	39 c2                	cmp    %eax,%edx
c00370bb:	72 f3                	jb     c00370b0 <__any_on+0x30>
c00370bd:	31 c0                	xor    %eax,%eax
c00370bf:	5b                   	pop    %ebx
c00370c0:	5e                   	pop    %esi
c00370c1:	5f                   	pop    %edi
c00370c2:	5d                   	pop    %ebp
c00370c3:	c3                   	ret    
c00370c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00370c8:	7e 1e                	jle    c00370e8 <__any_on+0x68>
c00370ca:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00370cd:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c00370d0:	83 e1 1f             	and    $0x1f,%ecx
c00370d3:	74 c7                	je     c003709c <__any_on+0x1c>
c00370d5:	8b 3b                	mov    (%ebx),%edi
c00370d7:	b8 01 00 00 00       	mov    $0x1,%eax
c00370dc:	89 fe                	mov    %edi,%esi
c00370de:	d3 ee                	shr    %cl,%esi
c00370e0:	d3 e6                	shl    %cl,%esi
c00370e2:	39 fe                	cmp    %edi,%esi
c00370e4:	75 d9                	jne    c00370bf <__any_on+0x3f>
c00370e6:	eb b4                	jmp    c003709c <__any_on+0x1c>
c00370e8:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c00370eb:	eb af                	jmp    c003709c <__any_on+0x1c>
c00370ed:	8d 76 00             	lea    0x0(%esi),%esi
c00370f0:	5b                   	pop    %ebx
c00370f1:	b8 01 00 00 00       	mov    $0x1,%eax
c00370f6:	5e                   	pop    %esi
c00370f7:	5f                   	pop    %edi
c00370f8:	5d                   	pop    %ebp
c00370f9:	c3                   	ret    
c00370fa:	66 90                	xchg   %ax,%ax
c00370fc:	66 90                	xchg   %ax,%ax
c00370fe:	66 90                	xchg   %ax,%ax

c0037100 <_sbrk_r>:
c0037100:	55                   	push   %ebp
c0037101:	89 e5                	mov    %esp,%ebp
c0037103:	83 ec 18             	sub    $0x18,%esp
c0037106:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037109:	c7 05 00 40 09 c0 00 	movl   $0x0,0xc0094000
c0037110:	00 00 00 
c0037113:	89 04 24             	mov    %eax,(%esp)
c0037116:	e8 df a8 ff ff       	call   c00319fa <sbrk>
c003711b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003711e:	74 08                	je     c0037128 <_sbrk_r+0x28>
c0037120:	c9                   	leave  
c0037121:	c3                   	ret    
c0037122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037128:	8b 15 00 40 09 c0    	mov    0xc0094000,%edx
c003712e:	85 d2                	test   %edx,%edx
c0037130:	74 ee                	je     c0037120 <_sbrk_r+0x20>
c0037132:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0037135:	89 11                	mov    %edx,(%ecx)
c0037137:	c9                   	leave  
c0037138:	c3                   	ret    
c0037139:	66 90                	xchg   %ax,%ax
c003713b:	66 90                	xchg   %ax,%ax
c003713d:	66 90                	xchg   %ax,%ax
c003713f:	90                   	nop

c0037140 <__fpclassifyd>:
c0037140:	55                   	push   %ebp
c0037141:	b8 02 00 00 00       	mov    $0x2,%eax
c0037146:	89 e5                	mov    %esp,%ebp
c0037148:	53                   	push   %ebx
c0037149:	83 ec 0c             	sub    $0xc,%esp
c003714c:	dd 45 08             	fldl   0x8(%ebp)
c003714f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0037152:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0037155:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0037158:	89 d3                	mov    %edx,%ebx
c003715a:	09 cb                	or     %ecx,%ebx
c003715c:	75 0a                	jne    c0037168 <__fpclassifyd+0x28>
c003715e:	83 c4 0c             	add    $0xc,%esp
c0037161:	5b                   	pop    %ebx
c0037162:	5d                   	pop    %ebp
c0037163:	c3                   	ret    
c0037164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037168:	85 d2                	test   %edx,%edx
c003716a:	0f 94 c2             	sete   %dl
c003716d:	75 08                	jne    c0037177 <__fpclassifyd+0x37>
c003716f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0037175:	74 e7                	je     c003715e <__fpclassifyd+0x1e>
c0037177:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c003717d:	b8 04 00 00 00       	mov    $0x4,%eax
c0037182:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0037188:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c003718e:	76 ce                	jbe    c003715e <__fpclassifyd+0x1e>
c0037190:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0037196:	b0 03                	mov    $0x3,%al
c0037198:	76 c4                	jbe    c003715e <__fpclassifyd+0x1e>
c003719a:	31 c0                	xor    %eax,%eax
c003719c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c00371a2:	0f 94 c0             	sete   %al
c00371a5:	21 d0                	and    %edx,%eax
c00371a7:	eb b5                	jmp    c003715e <__fpclassifyd+0x1e>
c00371a9:	66 90                	xchg   %ax,%ax
c00371ab:	66 90                	xchg   %ax,%ax
c00371ad:	66 90                	xchg   %ax,%ax
c00371af:	90                   	nop

c00371b0 <strlen>:
c00371b0:	55                   	push   %ebp
c00371b1:	89 e5                	mov    %esp,%ebp
c00371b3:	57                   	push   %edi
c00371b4:	8b 55 08             	mov    0x8(%ebp),%edx
c00371b7:	89 d7                	mov    %edx,%edi
c00371b9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00371bf:	74 25                	je     c00371e6 <L5>
c00371c1:	8a 0f                	mov    (%edi),%cl
c00371c3:	47                   	inc    %edi
c00371c4:	84 c9                	test   %cl,%cl
c00371c6:	74 56                	je     c003721e <L15>
c00371c8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00371ce:	74 16                	je     c00371e6 <L5>
c00371d0:	8a 0f                	mov    (%edi),%cl
c00371d2:	47                   	inc    %edi
c00371d3:	84 c9                	test   %cl,%cl
c00371d5:	74 47                	je     c003721e <L15>
c00371d7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00371dd:	74 07                	je     c00371e6 <L5>
c00371df:	8a 0f                	mov    (%edi),%cl
c00371e1:	47                   	inc    %edi
c00371e2:	84 c9                	test   %cl,%cl
c00371e4:	74 38                	je     c003721e <L15>

c00371e6 <L5>:
c00371e6:	83 ef 04             	sub    $0x4,%edi
c00371e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00371f0 <L10>:
c00371f0:	83 c7 04             	add    $0x4,%edi
c00371f3:	8b 0f                	mov    (%edi),%ecx
c00371f5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c00371fb:	f7 d1                	not    %ecx
c00371fd:	21 c8                	and    %ecx,%eax
c00371ff:	a9 80 80 80 80       	test   $0x80808080,%eax
c0037204:	74 ea                	je     c00371f0 <L10>
c0037206:	f7 d1                	not    %ecx
c0037208:	47                   	inc    %edi
c0037209:	84 c9                	test   %cl,%cl
c003720b:	74 11                	je     c003721e <L15>
c003720d:	47                   	inc    %edi
c003720e:	c1 e9 08             	shr    $0x8,%ecx
c0037211:	84 c9                	test   %cl,%cl
c0037213:	74 09                	je     c003721e <L15>
c0037215:	47                   	inc    %edi
c0037216:	c1 e9 08             	shr    $0x8,%ecx
c0037219:	84 c9                	test   %cl,%cl
c003721b:	74 01                	je     c003721e <L15>
c003721d:	47                   	inc    %edi

c003721e <L15>:
c003721e:	29 d7                	sub    %edx,%edi
c0037220:	8d 47 ff             	lea    -0x1(%edi),%eax
c0037223:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0037226:	5f                   	pop    %edi
c0037227:	c9                   	leave  
c0037228:	c3                   	ret    
c0037229:	66 90                	xchg   %ax,%ax
c003722b:	66 90                	xchg   %ax,%ax
c003722d:	66 90                	xchg   %ax,%ax
c003722f:	90                   	nop

c0037230 <__ssprint_r>:
c0037230:	55                   	push   %ebp
c0037231:	89 e5                	mov    %esp,%ebp
c0037233:	57                   	push   %edi
c0037234:	56                   	push   %esi
c0037235:	53                   	push   %ebx
c0037236:	83 ec 2c             	sub    $0x2c,%esp
c0037239:	8b 45 10             	mov    0x10(%ebp),%eax
c003723c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003723f:	8b 00                	mov    (%eax),%eax
c0037241:	89 c7                	mov    %eax,%edi
c0037243:	8b 45 10             	mov    0x10(%ebp),%eax
c0037246:	8b 40 08             	mov    0x8(%eax),%eax
c0037249:	85 c0                	test   %eax,%eax
c003724b:	0f 84 af 01 00 00    	je     c0037400 <__ssprint_r+0x1d0>
c0037251:	31 c9                	xor    %ecx,%ecx
c0037253:	31 d2                	xor    %edx,%edx
c0037255:	8b 03                	mov    (%ebx),%eax
c0037257:	89 ce                	mov    %ecx,%esi
c0037259:	85 f6                	test   %esi,%esi
c003725b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003725e:	0f 84 ec 00 00 00    	je     c0037350 <__ssprint_r+0x120>
c0037264:	8b 53 08             	mov    0x8(%ebx),%edx
c0037267:	39 d6                	cmp    %edx,%esi
c0037269:	0f 82 fc 00 00 00    	jb     c003736b <__ssprint_r+0x13b>
c003726f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0037273:	66 f7 c1 80 04       	test   $0x480,%cx
c0037278:	0f 84 fa 00 00 00    	je     c0037378 <__ssprint_r+0x148>
c003727e:	8b 53 10             	mov    0x10(%ebx),%edx
c0037281:	29 d0                	sub    %edx,%eax
c0037283:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0037286:	8b 43 14             	mov    0x14(%ebx),%eax
c0037289:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003728c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c003728f:	89 c2                	mov    %eax,%edx
c0037291:	c1 ea 1f             	shr    $0x1f,%edx
c0037294:	01 d0                	add    %edx,%eax
c0037296:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037299:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003729c:	d1 7d e0             	sarl   -0x20(%ebp)
c003729f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c00372a3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c00372a6:	0f 83 34 01 00 00    	jae    c00373e0 <__ssprint_r+0x1b0>
c00372ac:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00372af:	80 e5 04             	and    $0x4,%ch
c00372b2:	0f 84 c8 00 00 00    	je     c0037380 <__ssprint_r+0x150>
c00372b8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00372bc:	8b 45 08             	mov    0x8(%ebp),%eax
c00372bf:	89 04 24             	mov    %eax,(%esp)
c00372c2:	e8 59 e8 ff ff       	call   c0035b20 <_malloc_r>
c00372c7:	85 c0                	test   %eax,%eax
c00372c9:	89 c2                	mov    %eax,%edx
c00372cb:	0f 84 e1 00 00 00    	je     c00373b2 <__ssprint_r+0x182>
c00372d1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00372d4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00372d7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00372db:	8b 43 10             	mov    0x10(%ebx),%eax
c00372de:	89 14 24             	mov    %edx,(%esp)
c00372e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00372e5:	e8 0a b2 ff ff       	call   c00324f4 <memcpy>
c00372ea:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c00372ee:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00372f1:	66 25 7f fb          	and    $0xfb7f,%ax
c00372f5:	0c 80                	or     $0x80,%al
c00372f7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c00372fb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00372fe:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0037301:	89 53 10             	mov    %edx,0x10(%ebx)
c0037304:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0037307:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c003730a:	01 d0                	add    %edx,%eax
c003730c:	89 03                	mov    %eax,(%ebx)
c003730e:	89 f2                	mov    %esi,%edx
c0037310:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0037313:	89 f1                	mov    %esi,%ecx
c0037315:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0037319:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c003731c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003731f:	89 04 24             	mov    %eax,(%esp)
c0037322:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0037325:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0037329:	e8 22 13 00 00       	call   c0038650 <memmove>
c003732e:	8b 03                	mov    (%ebx),%eax
c0037330:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037333:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0037336:	29 53 08             	sub    %edx,0x8(%ebx)
c0037339:	01 c8                	add    %ecx,%eax
c003733b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003733e:	89 03                	mov    %eax,(%ebx)
c0037340:	8b 51 08             	mov    0x8(%ecx),%edx
c0037343:	29 f2                	sub    %esi,%edx
c0037345:	85 d2                	test   %edx,%edx
c0037347:	89 51 08             	mov    %edx,0x8(%ecx)
c003734a:	0f 84 98 00 00 00    	je     c00373e8 <__ssprint_r+0x1b8>
c0037350:	8b 77 04             	mov    0x4(%edi),%esi
c0037353:	83 c7 08             	add    $0x8,%edi
c0037356:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0037359:	85 f6                	test   %esi,%esi
c003735b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003735e:	74 f0                	je     c0037350 <__ssprint_r+0x120>
c0037360:	8b 53 08             	mov    0x8(%ebx),%edx
c0037363:	39 d6                	cmp    %edx,%esi
c0037365:	0f 83 04 ff ff ff    	jae    c003726f <__ssprint_r+0x3f>
c003736b:	89 f2                	mov    %esi,%edx
c003736d:	89 f1                	mov    %esi,%ecx
c003736f:	eb a4                	jmp    c0037315 <__ssprint_r+0xe5>
c0037371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037378:	89 d1                	mov    %edx,%ecx
c003737a:	eb 99                	jmp    c0037315 <__ssprint_r+0xe5>
c003737c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037380:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037384:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0037387:	89 44 24 04          	mov    %eax,0x4(%esp)
c003738b:	8b 45 08             	mov    0x8(%ebp),%eax
c003738e:	89 04 24             	mov    %eax,(%esp)
c0037391:	e8 4a 13 00 00       	call   c00386e0 <_realloc_r>
c0037396:	85 c0                	test   %eax,%eax
c0037398:	89 c2                	mov    %eax,%edx
c003739a:	0f 85 5b ff ff ff    	jne    c00372fb <__ssprint_r+0xcb>
c00373a0:	8b 43 10             	mov    0x10(%ebx),%eax
c00373a3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00373a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00373aa:	89 04 24             	mov    %eax,(%esp)
c00373ad:	e8 3e 10 00 00       	call   c00383f0 <_free_r>
c00373b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00373b5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00373bb:	8b 45 10             	mov    0x10(%ebp),%eax
c00373be:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c00373c3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c00373ca:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c00373d1:	83 c4 2c             	add    $0x2c,%esp
c00373d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00373d9:	5b                   	pop    %ebx
c00373da:	5e                   	pop    %esi
c00373db:	5f                   	pop    %edi
c00373dc:	5d                   	pop    %ebp
c00373dd:	c3                   	ret    
c00373de:	66 90                	xchg   %ax,%ax
c00373e0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00373e3:	e9 c7 fe ff ff       	jmp    c00372af <__ssprint_r+0x7f>
c00373e8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c00373ef:	83 c4 2c             	add    $0x2c,%esp
c00373f2:	31 c0                	xor    %eax,%eax
c00373f4:	5b                   	pop    %ebx
c00373f5:	5e                   	pop    %esi
c00373f6:	5f                   	pop    %edi
c00373f7:	5d                   	pop    %ebp
c00373f8:	c3                   	ret    
c00373f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037400:	8b 45 10             	mov    0x10(%ebp),%eax
c0037403:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c003740a:	83 c4 2c             	add    $0x2c,%esp
c003740d:	31 c0                	xor    %eax,%eax
c003740f:	5b                   	pop    %ebx
c0037410:	5e                   	pop    %esi
c0037411:	5f                   	pop    %edi
c0037412:	5d                   	pop    %ebp
c0037413:	c3                   	ret    
c0037414:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c003741a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0037420 <_svfiprintf_r>:
c0037420:	55                   	push   %ebp
c0037421:	89 e5                	mov    %esp,%ebp
c0037423:	57                   	push   %edi
c0037424:	56                   	push   %esi
c0037425:	53                   	push   %ebx
c0037426:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c003742c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003742f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0037433:	74 0b                	je     c0037440 <_svfiprintf_r+0x20>
c0037435:	8b 50 10             	mov    0x10(%eax),%edx
c0037438:	85 d2                	test   %edx,%edx
c003743a:	0f 84 1c 0d 00 00    	je     c003815c <_svfiprintf_r+0xd3c>
c0037440:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037443:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037446:	89 c6                	mov    %eax,%esi
c0037448:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003744e:	29 d8                	sub    %ebx,%eax
c0037450:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0037457:	00 00 00 
c003745a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0037461:	00 00 00 
c0037464:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003746b:	00 00 00 
c003746e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0037475:	00 00 00 
c0037478:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c003747e:	8b 45 10             	mov    0x10(%ebp),%eax
c0037481:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0037484:	0f b6 00             	movzbl (%eax),%eax
c0037487:	84 c0                	test   %al,%al
c0037489:	74 58                	je     c00374e3 <_svfiprintf_r+0xc3>
c003748b:	3c 25                	cmp    $0x25,%al
c003748d:	75 13                	jne    c00374a2 <_svfiprintf_r+0x82>
c003748f:	eb 52                	jmp    c00374e3 <_svfiprintf_r+0xc3>
c0037491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037498:	84 c0                	test   %al,%al
c003749a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00374a0:	74 0a                	je     c00374ac <_svfiprintf_r+0x8c>
c00374a2:	83 c3 01             	add    $0x1,%ebx
c00374a5:	0f b6 03             	movzbl (%ebx),%eax
c00374a8:	3c 25                	cmp    $0x25,%al
c00374aa:	75 ec                	jne    c0037498 <_svfiprintf_r+0x78>
c00374ac:	89 df                	mov    %ebx,%edi
c00374ae:	2b 7d 10             	sub    0x10(%ebp),%edi
c00374b1:	74 30                	je     c00374e3 <_svfiprintf_r+0xc3>
c00374b3:	8b 45 10             	mov    0x10(%ebp),%eax
c00374b6:	83 c6 08             	add    $0x8,%esi
c00374b9:	89 7e fc             	mov    %edi,-0x4(%esi)
c00374bc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c00374c2:	89 46 f8             	mov    %eax,-0x8(%esi)
c00374c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374cb:	83 c0 01             	add    $0x1,%eax
c00374ce:	83 f8 07             	cmp    $0x7,%eax
c00374d1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374d7:	0f 8f eb 0a 00 00    	jg     c0037fc8 <_svfiprintf_r+0xba8>
c00374dd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c00374e3:	80 3b 00             	cmpb   $0x0,(%ebx)
c00374e6:	0f 84 11 09 00 00    	je     c0037dfd <_svfiprintf_r+0x9dd>
c00374ec:	8d 43 01             	lea    0x1(%ebx),%eax
c00374ef:	31 ff                	xor    %edi,%edi
c00374f1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00374f8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c00374ff:	ff ff ff 
c0037502:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0037509:	00 00 00 
c003750c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0037513:	00 00 00 
c0037516:	8d 50 01             	lea    0x1(%eax),%edx
c0037519:	0f be 00             	movsbl (%eax),%eax
c003751c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003751f:	83 f9 58             	cmp    $0x58,%ecx
c0037522:	0f 87 63 03 00 00    	ja     c003788b <_svfiprintf_r+0x46b>
c0037528:	ff 24 8d a8 98 03 c0 	jmp    *-0x3ffc6758(,%ecx,4)
c003752f:	90                   	nop
c0037530:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037537:	89 d0                	mov    %edx,%eax
c0037539:	eb db                	jmp    c0037516 <_svfiprintf_r+0xf6>
c003753b:	8b 45 14             	mov    0x14(%ebp),%eax
c003753e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037541:	8b 00                	mov    (%eax),%eax
c0037543:	83 c3 04             	add    $0x4,%ebx
c0037546:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037549:	85 c0                	test   %eax,%eax
c003754b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0037551:	79 e4                	jns    c0037537 <_svfiprintf_r+0x117>
c0037553:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0037559:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0037560:	89 d0                	mov    %edx,%eax
c0037562:	eb b2                	jmp    c0037516 <_svfiprintf_r+0xf6>
c0037564:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0037569:	89 d0                	mov    %edx,%eax
c003756b:	eb a9                	jmp    c0037516 <_svfiprintf_r+0xf6>
c003756d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037570:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037577:	89 55 10             	mov    %edx,0x10(%ebp)
c003757a:	ba 02 00 00 00       	mov    $0x2,%edx
c003757f:	8b 08                	mov    (%eax),%ecx
c0037581:	83 c0 04             	add    $0x4,%eax
c0037584:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003758b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0037592:	89 45 14             	mov    %eax,0x14(%ebp)
c0037595:	c7 85 44 ff ff ff 53 	movl   $0xc0039553,-0xbc(%ebp)
c003759c:	95 03 c0 
c003759f:	90                   	nop
c00375a0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00375a7:	31 ff                	xor    %edi,%edi
c00375a9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c00375af:	89 d8                	mov    %ebx,%eax
c00375b1:	24 7f                	and    $0x7f,%al
c00375b3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c00375ba:	0f 48 c3             	cmovs  %ebx,%eax
c00375bd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c00375c3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00375c9:	85 c0                	test   %eax,%eax
c00375cb:	75 08                	jne    c00375d5 <_svfiprintf_r+0x1b5>
c00375cd:	85 c9                	test   %ecx,%ecx
c00375cf:	0f 84 03 08 00 00    	je     c0037dd8 <_svfiprintf_r+0x9b8>
c00375d5:	80 fa 01             	cmp    $0x1,%dl
c00375d8:	0f 84 8a 0a 00 00    	je     c0038068 <_svfiprintf_r+0xc48>
c00375de:	80 fa 02             	cmp    $0x2,%dl
c00375e1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00375e4:	0f 85 86 01 00 00    	jne    c0037770 <_svfiprintf_r+0x350>
c00375ea:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00375f0:	89 c8                	mov    %ecx,%eax
c00375f2:	83 eb 01             	sub    $0x1,%ebx
c00375f5:	83 e0 0f             	and    $0xf,%eax
c00375f8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c00375fc:	c1 e9 04             	shr    $0x4,%ecx
c00375ff:	85 c9                	test   %ecx,%ecx
c0037601:	88 03                	mov    %al,(%ebx)
c0037603:	75 eb                	jne    c00375f0 <_svfiprintf_r+0x1d0>
c0037605:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037608:	29 d8                	sub    %ebx,%eax
c003760a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037610:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037616:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c003761c:	39 c1                	cmp    %eax,%ecx
c003761e:	0f 4d c1             	cmovge %ecx,%eax
c0037621:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0037627:	89 f8                	mov    %edi,%eax
c0037629:	3c 01                	cmp    $0x1,%al
c003762b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0037632:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037638:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c003763e:	89 d0                	mov    %edx,%eax
c0037640:	89 cf                	mov    %ecx,%edi
c0037642:	83 c0 02             	add    $0x2,%eax
c0037645:	83 e7 02             	and    $0x2,%edi
c0037648:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c003764e:	89 cf                	mov    %ecx,%edi
c0037650:	0f 44 c2             	cmove  %edx,%eax
c0037653:	81 e7 84 00 00 00    	and    $0x84,%edi
c0037659:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c003765f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0037665:	0f 85 cd 04 00 00    	jne    c0037b38 <_svfiprintf_r+0x718>
c003766b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037671:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037677:	85 ff                	test   %edi,%edi
c0037679:	0f 8e b9 04 00 00    	jle    c0037b38 <_svfiprintf_r+0x718>
c003767f:	83 ff 10             	cmp    $0x10,%edi
c0037682:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037688:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003768e:	7e 7c                	jle    c003770c <_svfiprintf_r+0x2ec>
c0037690:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0037696:	89 f1                	mov    %esi,%ecx
c0037698:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003769b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003769e:	eb 08                	jmp    c00376a8 <_svfiprintf_r+0x288>
c00376a0:	83 ef 10             	sub    $0x10,%edi
c00376a3:	83 ff 10             	cmp    $0x10,%edi
c00376a6:	7e 5c                	jle    c0037704 <_svfiprintf_r+0x2e4>
c00376a8:	83 c0 01             	add    $0x1,%eax
c00376ab:	83 c2 10             	add    $0x10,%edx
c00376ae:	c7 01 1c 9a 03 c0    	movl   $0xc0039a1c,(%ecx)
c00376b4:	83 c1 08             	add    $0x8,%ecx
c00376b7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00376be:	83 f8 07             	cmp    $0x7,%eax
c00376c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376cd:	7e d1                	jle    c00376a0 <_svfiprintf_r+0x280>
c00376cf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376d5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376d9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00376dd:	89 1c 24             	mov    %ebx,(%esp)
c00376e0:	e8 4b fb ff ff       	call   c0037230 <__ssprint_r>
c00376e5:	85 c0                	test   %eax,%eax
c00376e7:	0f 85 3b 07 00 00    	jne    c0037e28 <_svfiprintf_r+0xa08>
c00376ed:	83 ef 10             	sub    $0x10,%edi
c00376f0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00376f6:	83 ff 10             	cmp    $0x10,%edi
c00376f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376ff:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037702:	7f a4                	jg     c00376a8 <_svfiprintf_r+0x288>
c0037704:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003770a:	89 ce                	mov    %ecx,%esi
c003770c:	83 c0 01             	add    $0x1,%eax
c003770f:	01 fa                	add    %edi,%edx
c0037711:	c7 06 1c 9a 03 c0    	movl   $0xc0039a1c,(%esi)
c0037717:	83 c6 08             	add    $0x8,%esi
c003771a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003771d:	83 f8 07             	cmp    $0x7,%eax
c0037720:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037726:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003772c:	0f 8e 12 04 00 00    	jle    c0037b44 <_svfiprintf_r+0x724>
c0037732:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037738:	89 44 24 08          	mov    %eax,0x8(%esp)
c003773c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003773f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037743:	8b 45 08             	mov    0x8(%ebp),%eax
c0037746:	89 04 24             	mov    %eax,(%esp)
c0037749:	e8 e2 fa ff ff       	call   c0037230 <__ssprint_r>
c003774e:	85 c0                	test   %eax,%eax
c0037750:	0f 85 d2 06 00 00    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037756:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003775c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003775f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037765:	e9 da 03 00 00       	jmp    c0037b44 <_svfiprintf_r+0x724>
c003776a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037770:	89 c8                	mov    %ecx,%eax
c0037772:	83 eb 01             	sub    $0x1,%ebx
c0037775:	83 e0 07             	and    $0x7,%eax
c0037778:	c1 e9 03             	shr    $0x3,%ecx
c003777b:	83 c0 30             	add    $0x30,%eax
c003777e:	85 c9                	test   %ecx,%ecx
c0037780:	88 03                	mov    %al,(%ebx)
c0037782:	75 ec                	jne    c0037770 <_svfiprintf_r+0x350>
c0037784:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003778b:	89 da                	mov    %ebx,%edx
c003778d:	0f 84 72 fe ff ff    	je     c0037605 <_svfiprintf_r+0x1e5>
c0037793:	3c 30                	cmp    $0x30,%al
c0037795:	0f 84 6a fe ff ff    	je     c0037605 <_svfiprintf_r+0x1e5>
c003779b:	83 eb 01             	sub    $0x1,%ebx
c003779e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00377a1:	29 d8                	sub    %ebx,%eax
c00377a3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00377a7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00377ad:	e9 5e fe ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c00377b2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00377b9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00377c0:	89 55 10             	mov    %edx,0x10(%ebp)
c00377c3:	8b 45 14             	mov    0x14(%ebp),%eax
c00377c6:	0f 85 48 01 00 00    	jne    c0037914 <_svfiprintf_r+0x4f4>
c00377cc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00377d3:	0f 84 3b 01 00 00    	je     c0037914 <_svfiprintf_r+0x4f4>
c00377d9:	0f b7 08             	movzwl (%eax),%ecx
c00377dc:	83 c0 04             	add    $0x4,%eax
c00377df:	31 d2                	xor    %edx,%edx
c00377e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00377e4:	e9 b7 fd ff ff       	jmp    c00375a0 <_svfiprintf_r+0x180>
c00377e9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00377f0:	89 f8                	mov    %edi,%eax
c00377f2:	89 55 10             	mov    %edx,0x10(%ebp)
c00377f5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00377fb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037802:	8b 45 14             	mov    0x14(%ebp),%eax
c0037805:	75 0d                	jne    c0037814 <_svfiprintf_r+0x3f4>
c0037807:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003780e:	0f 85 f2 08 00 00    	jne    c0038106 <_svfiprintf_r+0xce6>
c0037814:	8b 08                	mov    (%eax),%ecx
c0037816:	83 c0 04             	add    $0x4,%eax
c0037819:	89 45 14             	mov    %eax,0x14(%ebp)
c003781c:	85 c9                	test   %ecx,%ecx
c003781e:	0f 88 f3 08 00 00    	js     c0038117 <_svfiprintf_r+0xcf7>
c0037824:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003782b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037830:	e9 74 fd ff ff       	jmp    c00375a9 <_svfiprintf_r+0x189>
c0037835:	0f be 02             	movsbl (%edx),%eax
c0037838:	8d 5a 01             	lea    0x1(%edx),%ebx
c003783b:	83 f8 2a             	cmp    $0x2a,%eax
c003783e:	0f 84 af 09 00 00    	je     c00381f3 <_svfiprintf_r+0xdd3>
c0037844:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037847:	31 d2                	xor    %edx,%edx
c0037849:	83 f9 09             	cmp    $0x9,%ecx
c003784c:	0f 87 90 09 00 00    	ja     c00381e2 <_svfiprintf_r+0xdc2>
c0037852:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037858:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003785b:	83 c3 01             	add    $0x1,%ebx
c003785e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037861:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037865:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037868:	83 f9 09             	cmp    $0x9,%ecx
c003786b:	76 eb                	jbe    c0037858 <_svfiprintf_r+0x438>
c003786d:	85 d2                	test   %edx,%edx
c003786f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037874:	0f 48 d1             	cmovs  %ecx,%edx
c0037877:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003787a:	83 f9 58             	cmp    $0x58,%ecx
c003787d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037883:	89 da                	mov    %ebx,%edx
c0037885:	0f 86 9d fc ff ff    	jbe    c0037528 <_svfiprintf_r+0x108>
c003788b:	89 fb                	mov    %edi,%ebx
c003788d:	85 c0                	test   %eax,%eax
c003788f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037892:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037898:	0f 84 5f 05 00 00    	je     c0037dfd <_svfiprintf_r+0x9dd>
c003789e:	88 45 80             	mov    %al,-0x80(%ebp)
c00378a1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00378a4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00378ab:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00378b2:	00 00 00 
c00378b5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00378bc:	00 00 00 
c00378bf:	e9 5a 01 00 00       	jmp    c0037a1e <_svfiprintf_r+0x5fe>
c00378c4:	31 db                	xor    %ebx,%ebx
c00378c6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00378c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378d0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00378d3:	83 c2 01             	add    $0x1,%edx
c00378d6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00378d9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00378dd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00378e0:	83 f9 09             	cmp    $0x9,%ecx
c00378e3:	76 eb                	jbe    c00378d0 <_svfiprintf_r+0x4b0>
c00378e5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00378eb:	e9 2c fc ff ff       	jmp    c003751c <_svfiprintf_r+0xfc>
c00378f0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00378f7:	00 00 00 
c00378fa:	89 d0                	mov    %edx,%eax
c00378fc:	e9 15 fc ff ff       	jmp    c0037516 <_svfiprintf_r+0xf6>
c0037901:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037908:	89 55 10             	mov    %edx,0x10(%ebp)
c003790b:	8b 45 14             	mov    0x14(%ebp),%eax
c003790e:	0f 84 b8 fe ff ff    	je     c00377cc <_svfiprintf_r+0x3ac>
c0037914:	8b 08                	mov    (%eax),%ecx
c0037916:	83 c0 04             	add    $0x4,%eax
c0037919:	31 d2                	xor    %edx,%edx
c003791b:	89 45 14             	mov    %eax,0x14(%ebp)
c003791e:	e9 7d fc ff ff       	jmp    c00375a0 <_svfiprintf_r+0x180>
c0037923:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003792a:	89 f8                	mov    %edi,%eax
c003792c:	89 55 10             	mov    %edx,0x10(%ebp)
c003792f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037935:	0f 85 a2 07 00 00    	jne    c00380dd <_svfiprintf_r+0xcbd>
c003793b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037942:	0f 84 95 07 00 00    	je     c00380dd <_svfiprintf_r+0xcbd>
c0037948:	8b 45 14             	mov    0x14(%ebp),%eax
c003794b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037952:	8b 00                	mov    (%eax),%eax
c0037954:	66 89 18             	mov    %bx,(%eax)
c0037957:	8b 45 14             	mov    0x14(%ebp),%eax
c003795a:	83 c0 04             	add    $0x4,%eax
c003795d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037960:	e9 19 fb ff ff       	jmp    c003747e <_svfiprintf_r+0x5e>
c0037965:	89 fb                	mov    %edi,%ebx
c0037967:	89 55 10             	mov    %edx,0x10(%ebp)
c003796a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037970:	c7 85 44 ff ff ff 53 	movl   $0xc0039553,-0xbc(%ebp)
c0037977:	95 03 c0 
c003797a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037981:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037984:	75 0d                	jne    c0037993 <_svfiprintf_r+0x573>
c0037986:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003798d:	0f 85 65 07 00 00    	jne    c00380f8 <_svfiprintf_r+0xcd8>
c0037993:	8b 0b                	mov    (%ebx),%ecx
c0037995:	83 c3 04             	add    $0x4,%ebx
c0037998:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003799b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00379a2:	ba 02 00 00 00       	mov    $0x2,%edx
c00379a7:	0f 84 f3 fb ff ff    	je     c00375a0 <_svfiprintf_r+0x180>
c00379ad:	85 c9                	test   %ecx,%ecx
c00379af:	0f 84 eb fb ff ff    	je     c00375a0 <_svfiprintf_r+0x180>
c00379b5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00379bc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00379c2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00379c9:	e9 d2 fb ff ff       	jmp    c00375a0 <_svfiprintf_r+0x180>
c00379ce:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00379d5:	89 d0                	mov    %edx,%eax
c00379d7:	e9 3a fb ff ff       	jmp    c0037516 <_svfiprintf_r+0xf6>
c00379dc:	89 f8                	mov    %edi,%eax
c00379de:	89 55 10             	mov    %edx,0x10(%ebp)
c00379e1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00379e7:	e9 0f fe ff ff       	jmp    c00377fb <_svfiprintf_r+0x3db>
c00379ec:	8b 45 14             	mov    0x14(%ebp),%eax
c00379ef:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00379f2:	89 55 10             	mov    %edx,0x10(%ebp)
c00379f5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00379fc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037a03:	00 00 00 
c0037a06:	8b 00                	mov    (%eax),%eax
c0037a08:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c0037a0f:	00 00 00 
c0037a12:	88 45 80             	mov    %al,-0x80(%ebp)
c0037a15:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a18:	83 c0 04             	add    $0x4,%eax
c0037a1b:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a1e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a25:	00 00 00 
c0037a28:	e9 05 fc ff ff       	jmp    c0037632 <_svfiprintf_r+0x212>
c0037a2d:	89 fb                	mov    %edi,%ebx
c0037a2f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a32:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037a38:	c7 85 44 ff ff ff 42 	movl   $0xc0039542,-0xbc(%ebp)
c0037a3f:	95 03 c0 
c0037a42:	e9 33 ff ff ff       	jmp    c003797a <_svfiprintf_r+0x55a>
c0037a47:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037a4e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037a55:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a58:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a5b:	75 39                	jne    c0037a96 <_svfiprintf_r+0x676>
c0037a5d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037a64:	74 30                	je     c0037a96 <_svfiprintf_r+0x676>
c0037a66:	0f b7 08             	movzwl (%eax),%ecx
c0037a69:	83 c0 04             	add    $0x4,%eax
c0037a6c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a71:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a74:	e9 27 fb ff ff       	jmp    c00375a0 <_svfiprintf_r+0x180>
c0037a79:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037a80:	89 d0                	mov    %edx,%eax
c0037a82:	e9 8f fa ff ff       	jmp    c0037516 <_svfiprintf_r+0xf6>
c0037a87:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037a8e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a91:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a94:	74 c7                	je     c0037a5d <_svfiprintf_r+0x63d>
c0037a96:	8b 08                	mov    (%eax),%ecx
c0037a98:	83 c0 04             	add    $0x4,%eax
c0037a9b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037aa0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037aa3:	e9 f8 fa ff ff       	jmp    c00375a0 <_svfiprintf_r+0x180>
c0037aa8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037aab:	89 55 10             	mov    %edx,0x10(%ebp)
c0037aae:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037ab5:	8b 18                	mov    (%eax),%ebx
c0037ab7:	8d 50 04             	lea    0x4(%eax),%edx
c0037aba:	85 db                	test   %ebx,%ebx
c0037abc:	0f 84 cc 06 00 00    	je     c003818e <_svfiprintf_r+0xd6e>
c0037ac2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037ac8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c0037ace:	85 ff                	test   %edi,%edi
c0037ad0:	0f 88 59 06 00 00    	js     c003812f <_svfiprintf_r+0xd0f>
c0037ad6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c0037ada:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ae1:	00 
c0037ae2:	89 1c 24             	mov    %ebx,(%esp)
c0037ae5:	e8 76 e7 ff ff       	call   c0036260 <memchr>
c0037aea:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037af0:	85 c0                	test   %eax,%eax
c0037af2:	0f 84 c5 06 00 00    	je     c00381bd <_svfiprintf_r+0xd9d>
c0037af8:	29 d8                	sub    %ebx,%eax
c0037afa:	39 f8                	cmp    %edi,%eax
c0037afc:	0f 4f c7             	cmovg  %edi,%eax
c0037aff:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037b06:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b0c:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b0f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b16:	00 00 00 
c0037b19:	e9 f2 fa ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c0037b1e:	89 f8                	mov    %edi,%eax
c0037b20:	84 c0                	test   %al,%al
c0037b22:	b8 20 00 00 00       	mov    $0x20,%eax
c0037b27:	0f 44 f8             	cmove  %eax,%edi
c0037b2a:	89 d0                	mov    %edx,%eax
c0037b2c:	e9 e5 f9 ff ff       	jmp    c0037516 <_svfiprintf_r+0xf6>
c0037b31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037b38:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037b3e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037b44:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c0037b4b:	74 2e                	je     c0037b7b <_svfiprintf_r+0x75b>
c0037b4d:	83 c0 01             	add    $0x1,%eax
c0037b50:	83 c2 01             	add    $0x1,%edx
c0037b53:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037b59:	83 c6 08             	add    $0x8,%esi
c0037b5c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037b5f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037b66:	83 f8 07             	cmp    $0x7,%eax
c0037b69:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037b6f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037b75:	0f 8f b5 04 00 00    	jg     c0038030 <_svfiprintf_r+0xc10>
c0037b7b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037b81:	85 c9                	test   %ecx,%ecx
c0037b83:	74 2e                	je     c0037bb3 <_svfiprintf_r+0x793>
c0037b85:	83 c0 01             	add    $0x1,%eax
c0037b88:	83 c2 02             	add    $0x2,%edx
c0037b8b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037b91:	83 c6 08             	add    $0x8,%esi
c0037b94:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037b97:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c0037b9e:	83 f8 07             	cmp    $0x7,%eax
c0037ba1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037ba7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037bad:	0f 8f 45 04 00 00    	jg     c0037ff8 <_svfiprintf_r+0xbd8>
c0037bb3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c0037bba:	00 00 00 
c0037bbd:	0f 84 9d 02 00 00    	je     c0037e60 <_svfiprintf_r+0xa40>
c0037bc3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037bc9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c0037bcf:	85 ff                	test   %edi,%edi
c0037bd1:	0f 8e e1 00 00 00    	jle    c0037cb8 <_svfiprintf_r+0x898>
c0037bd7:	83 ff 10             	cmp    $0x10,%edi
c0037bda:	0f 8e 7c 00 00 00    	jle    c0037c5c <_svfiprintf_r+0x83c>
c0037be0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037be6:	89 f1                	mov    %esi,%ecx
c0037be8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037beb:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037bee:	eb 08                	jmp    c0037bf8 <_svfiprintf_r+0x7d8>
c0037bf0:	83 ef 10             	sub    $0x10,%edi
c0037bf3:	83 ff 10             	cmp    $0x10,%edi
c0037bf6:	7e 5c                	jle    c0037c54 <_svfiprintf_r+0x834>
c0037bf8:	83 c0 01             	add    $0x1,%eax
c0037bfb:	83 c2 10             	add    $0x10,%edx
c0037bfe:	c7 01 0c 9a 03 c0    	movl   $0xc0039a0c,(%ecx)
c0037c04:	83 c1 08             	add    $0x8,%ecx
c0037c07:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037c0e:	83 f8 07             	cmp    $0x7,%eax
c0037c11:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037c17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037c1d:	7e d1                	jle    c0037bf0 <_svfiprintf_r+0x7d0>
c0037c1f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c25:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c29:	89 74 24 04          	mov    %esi,0x4(%esp)
c0037c2d:	89 1c 24             	mov    %ebx,(%esp)
c0037c30:	e8 fb f5 ff ff       	call   c0037230 <__ssprint_r>
c0037c35:	85 c0                	test   %eax,%eax
c0037c37:	0f 85 eb 01 00 00    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037c3d:	83 ef 10             	sub    $0x10,%edi
c0037c40:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037c46:	83 ff 10             	cmp    $0x10,%edi
c0037c49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037c4f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037c52:	7f a4                	jg     c0037bf8 <_svfiprintf_r+0x7d8>
c0037c54:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0037c5a:	89 ce                	mov    %ecx,%esi
c0037c5c:	83 c0 01             	add    $0x1,%eax
c0037c5f:	01 fa                	add    %edi,%edx
c0037c61:	c7 06 0c 9a 03 c0    	movl   $0xc0039a0c,(%esi)
c0037c67:	83 c6 08             	add    $0x8,%esi
c0037c6a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0037c6d:	83 f8 07             	cmp    $0x7,%eax
c0037c70:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037c76:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037c7c:	7e 3a                	jle    c0037cb8 <_svfiprintf_r+0x898>
c0037c7e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c84:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037c8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037c92:	89 04 24             	mov    %eax,(%esp)
c0037c95:	e8 96 f5 ff ff       	call   c0037230 <__ssprint_r>
c0037c9a:	85 c0                	test   %eax,%eax
c0037c9c:	0f 85 86 01 00 00    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037ca2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037ca8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037cab:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037cb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037cb8:	89 1e                	mov    %ebx,(%esi)
c0037cba:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037cc0:	83 c0 01             	add    $0x1,%eax
c0037cc3:	83 c6 08             	add    $0x8,%esi
c0037cc6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037ccc:	89 5e fc             	mov    %ebx,-0x4(%esi)
c0037ccf:	01 da                	add    %ebx,%edx
c0037cd1:	83 f8 07             	cmp    $0x7,%eax
c0037cd4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037cda:	0f 8f 80 02 00 00    	jg     c0037f60 <_svfiprintf_r+0xb40>
c0037ce0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037ce7:	0f 84 b9 00 00 00    	je     c0037da6 <_svfiprintf_r+0x986>
c0037ced:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037cf3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037cf9:	85 ff                	test   %edi,%edi
c0037cfb:	0f 8e a5 00 00 00    	jle    c0037da6 <_svfiprintf_r+0x986>
c0037d01:	83 ff 10             	cmp    $0x10,%edi
c0037d04:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037d0a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037d10:	7e 71                	jle    c0037d83 <_svfiprintf_r+0x963>
c0037d12:	89 f1                	mov    %esi,%ecx
c0037d14:	8b 75 08             	mov    0x8(%ebp),%esi
c0037d17:	eb 0f                	jmp    c0037d28 <_svfiprintf_r+0x908>
c0037d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037d20:	83 ef 10             	sub    $0x10,%edi
c0037d23:	83 ff 10             	cmp    $0x10,%edi
c0037d26:	7e 59                	jle    c0037d81 <_svfiprintf_r+0x961>
c0037d28:	83 c0 01             	add    $0x1,%eax
c0037d2b:	83 c2 10             	add    $0x10,%edx
c0037d2e:	c7 01 1c 9a 03 c0    	movl   $0xc0039a1c,(%ecx)
c0037d34:	83 c1 08             	add    $0x8,%ecx
c0037d37:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037d3e:	83 f8 07             	cmp    $0x7,%eax
c0037d41:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037d47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037d4d:	7e d1                	jle    c0037d20 <_svfiprintf_r+0x900>
c0037d4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037d52:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037d56:	89 34 24             	mov    %esi,(%esp)
c0037d59:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d5d:	e8 ce f4 ff ff       	call   c0037230 <__ssprint_r>
c0037d62:	85 c0                	test   %eax,%eax
c0037d64:	0f 85 be 00 00 00    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037d6a:	83 ef 10             	sub    $0x10,%edi
c0037d6d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037d73:	83 ff 10             	cmp    $0x10,%edi
c0037d76:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037d7c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037d7f:	7f a7                	jg     c0037d28 <_svfiprintf_r+0x908>
c0037d81:	89 ce                	mov    %ecx,%esi
c0037d83:	83 c0 01             	add    $0x1,%eax
c0037d86:	01 fa                	add    %edi,%edx
c0037d88:	83 f8 07             	cmp    $0x7,%eax
c0037d8b:	c7 06 1c 9a 03 c0    	movl   $0xc0039a1c,(%esi)
c0037d91:	89 7e 04             	mov    %edi,0x4(%esi)
c0037d94:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037d9a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037da0:	0f 8f ee 02 00 00    	jg     c0038094 <_svfiprintf_r+0xc74>
c0037da6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c0037dac:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037db2:	39 c6                	cmp    %eax,%esi
c0037db4:	0f 4d c6             	cmovge %esi,%eax
c0037db7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c0037dbd:	85 d2                	test   %edx,%edx
c0037dbf:	0f 85 d3 01 00 00    	jne    c0037f98 <_svfiprintf_r+0xb78>
c0037dc5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0037dcc:	00 00 00 
c0037dcf:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037dd2:	e9 a7 f6 ff ff       	jmp    c003747e <_svfiprintf_r+0x5e>
c0037dd7:	90                   	nop
c0037dd8:	84 d2                	test   %dl,%dl
c0037dda:	75 6c                	jne    c0037e48 <_svfiprintf_r+0xa28>
c0037ddc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037de3:	74 63                	je     c0037e48 <_svfiprintf_r+0xa28>
c0037de5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037deb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037dee:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037df2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037df8:	e9 13 f8 ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c0037dfd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037e03:	85 c0                	test   %eax,%eax
c0037e05:	74 21                	je     c0037e28 <_svfiprintf_r+0xa08>
c0037e07:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037e0d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037e11:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037e14:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e18:	8b 45 08             	mov    0x8(%ebp),%eax
c0037e1b:	89 04 24             	mov    %eax,(%esp)
c0037e1e:	e8 0d f4 ff ff       	call   c0037230 <__ssprint_r>
c0037e23:	90                   	nop
c0037e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e28:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037e2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037e30:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037e34:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c0037e3b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037e41:	5b                   	pop    %ebx
c0037e42:	5e                   	pop    %esi
c0037e43:	5f                   	pop    %edi
c0037e44:	5d                   	pop    %ebp
c0037e45:	c3                   	ret    
c0037e46:	66 90                	xchg   %ax,%ax
c0037e48:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c0037e4f:	00 00 00 
c0037e52:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037e55:	e9 b6 f7 ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c0037e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e60:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037e66:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037e6c:	85 ff                	test   %edi,%edi
c0037e6e:	0f 8e 4f fd ff ff    	jle    c0037bc3 <_svfiprintf_r+0x7a3>
c0037e74:	83 ff 10             	cmp    $0x10,%edi
c0037e77:	0f 8e 7f 00 00 00    	jle    c0037efc <_svfiprintf_r+0xadc>
c0037e7d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037e83:	89 f1                	mov    %esi,%ecx
c0037e85:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037e88:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037e8b:	eb 0b                	jmp    c0037e98 <_svfiprintf_r+0xa78>
c0037e8d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e90:	83 ef 10             	sub    $0x10,%edi
c0037e93:	83 ff 10             	cmp    $0x10,%edi
c0037e96:	7e 5c                	jle    c0037ef4 <_svfiprintf_r+0xad4>
c0037e98:	83 c0 01             	add    $0x1,%eax
c0037e9b:	83 c2 10             	add    $0x10,%edx
c0037e9e:	c7 01 0c 9a 03 c0    	movl   $0xc0039a0c,(%ecx)
c0037ea4:	83 c1 08             	add    $0x8,%ecx
c0037ea7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037eae:	83 f8 07             	cmp    $0x7,%eax
c0037eb1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037eb7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037ebd:	7e d1                	jle    c0037e90 <_svfiprintf_r+0xa70>
c0037ebf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037ec5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037ec9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0037ecd:	89 1c 24             	mov    %ebx,(%esp)
c0037ed0:	e8 5b f3 ff ff       	call   c0037230 <__ssprint_r>
c0037ed5:	85 c0                	test   %eax,%eax
c0037ed7:	0f 85 4b ff ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037edd:	83 ef 10             	sub    $0x10,%edi
c0037ee0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037ee6:	83 ff 10             	cmp    $0x10,%edi
c0037ee9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037eef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037ef2:	7f a4                	jg     c0037e98 <_svfiprintf_r+0xa78>
c0037ef4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c0037efa:	89 ce                	mov    %ecx,%esi
c0037efc:	83 c0 01             	add    $0x1,%eax
c0037eff:	01 fa                	add    %edi,%edx
c0037f01:	c7 06 0c 9a 03 c0    	movl   $0xc0039a0c,(%esi)
c0037f07:	83 c6 08             	add    $0x8,%esi
c0037f0a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0037f0d:	83 f8 07             	cmp    $0x7,%eax
c0037f10:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037f16:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037f1c:	0f 8e a1 fc ff ff    	jle    c0037bc3 <_svfiprintf_r+0x7a3>
c0037f22:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037f28:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037f2c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037f2f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037f33:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f36:	89 04 24             	mov    %eax,(%esp)
c0037f39:	e8 f2 f2 ff ff       	call   c0037230 <__ssprint_r>
c0037f3e:	85 c0                	test   %eax,%eax
c0037f40:	0f 85 e2 fe ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037f46:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037f4c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037f4f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037f55:	e9 69 fc ff ff       	jmp    c0037bc3 <_svfiprintf_r+0x7a3>
c0037f5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f60:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037f66:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037f6a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037f6d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037f71:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f74:	89 04 24             	mov    %eax,(%esp)
c0037f77:	e8 b4 f2 ff ff       	call   c0037230 <__ssprint_r>
c0037f7c:	85 c0                	test   %eax,%eax
c0037f7e:	0f 85 a4 fe ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037f84:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037f8a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037f8d:	e9 4e fd ff ff       	jmp    c0037ce0 <_svfiprintf_r+0x8c0>
c0037f92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f98:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037f9e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037fa2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037fa5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fac:	89 04 24             	mov    %eax,(%esp)
c0037faf:	e8 7c f2 ff ff       	call   c0037230 <__ssprint_r>
c0037fb4:	85 c0                	test   %eax,%eax
c0037fb6:	0f 84 09 fe ff ff    	je     c0037dc5 <_svfiprintf_r+0x9a5>
c0037fbc:	e9 67 fe ff ff       	jmp    c0037e28 <_svfiprintf_r+0xa08>
c0037fc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037fc8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037fce:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037fd2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037fd5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037fd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fdc:	89 04 24             	mov    %eax,(%esp)
c0037fdf:	e8 4c f2 ff ff       	call   c0037230 <__ssprint_r>
c0037fe4:	85 c0                	test   %eax,%eax
c0037fe6:	0f 85 3c fe ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0037fec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037fef:	e9 e9 f4 ff ff       	jmp    c00374dd <_svfiprintf_r+0xbd>
c0037ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ff8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037ffe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0038002:	8b 45 0c             	mov    0xc(%ebp),%eax
c0038005:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038009:	8b 45 08             	mov    0x8(%ebp),%eax
c003800c:	89 04 24             	mov    %eax,(%esp)
c003800f:	e8 1c f2 ff ff       	call   c0037230 <__ssprint_r>
c0038014:	85 c0                	test   %eax,%eax
c0038016:	0f 85 0c fe ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c003801c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0038022:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0038025:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003802b:	e9 83 fb ff ff       	jmp    c0037bb3 <_svfiprintf_r+0x793>
c0038030:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0038036:	89 44 24 08          	mov    %eax,0x8(%esp)
c003803a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003803d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038041:	8b 45 08             	mov    0x8(%ebp),%eax
c0038044:	89 04 24             	mov    %eax,(%esp)
c0038047:	e8 e4 f1 ff ff       	call   c0037230 <__ssprint_r>
c003804c:	85 c0                	test   %eax,%eax
c003804e:	0f 85 d4 fd ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c0038054:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003805a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003805d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0038063:	e9 13 fb ff ff       	jmp    c0037b7b <_svfiprintf_r+0x75b>
c0038068:	83 f9 09             	cmp    $0x9,%ecx
c003806b:	76 56                	jbe    c00380c3 <_svfiprintf_r+0xca3>
c003806d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0038070:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0038075:	83 eb 01             	sub    $0x1,%ebx
c0038078:	f7 e1                	mul    %ecx
c003807a:	c1 ea 03             	shr    $0x3,%edx
c003807d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0038080:	01 c0                	add    %eax,%eax
c0038082:	29 c1                	sub    %eax,%ecx
c0038084:	83 c1 30             	add    $0x30,%ecx
c0038087:	85 d2                	test   %edx,%edx
c0038089:	88 0b                	mov    %cl,(%ebx)
c003808b:	89 d1                	mov    %edx,%ecx
c003808d:	75 e1                	jne    c0038070 <_svfiprintf_r+0xc50>
c003808f:	e9 71 f5 ff ff       	jmp    c0037605 <_svfiprintf_r+0x1e5>
c0038094:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003809a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003809e:	8b 45 0c             	mov    0xc(%ebp),%eax
c00380a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00380a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00380a8:	89 04 24             	mov    %eax,(%esp)
c00380ab:	e8 80 f1 ff ff       	call   c0037230 <__ssprint_r>
c00380b0:	85 c0                	test   %eax,%eax
c00380b2:	0f 85 70 fd ff ff    	jne    c0037e28 <_svfiprintf_r+0xa08>
c00380b8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00380be:	e9 e3 fc ff ff       	jmp    c0037da6 <_svfiprintf_r+0x986>
c00380c3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00380c9:	83 c1 30             	add    $0x30,%ecx
c00380cc:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00380cf:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00380d2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00380d8:	e9 33 f5 ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c00380dd:	8b 45 14             	mov    0x14(%ebp),%eax
c00380e0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00380e6:	8b 00                	mov    (%eax),%eax
c00380e8:	89 18                	mov    %ebx,(%eax)
c00380ea:	8b 45 14             	mov    0x14(%ebp),%eax
c00380ed:	83 c0 04             	add    $0x4,%eax
c00380f0:	89 45 14             	mov    %eax,0x14(%ebp)
c00380f3:	e9 86 f3 ff ff       	jmp    c003747e <_svfiprintf_r+0x5e>
c00380f8:	0f b7 0b             	movzwl (%ebx),%ecx
c00380fb:	83 c3 04             	add    $0x4,%ebx
c00380fe:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0038101:	e9 95 f8 ff ff       	jmp    c003799b <_svfiprintf_r+0x57b>
c0038106:	0f bf 08             	movswl (%eax),%ecx
c0038109:	83 c0 04             	add    $0x4,%eax
c003810c:	89 45 14             	mov    %eax,0x14(%ebp)
c003810f:	85 c9                	test   %ecx,%ecx
c0038111:	0f 89 0d f7 ff ff    	jns    c0037824 <_svfiprintf_r+0x404>
c0038117:	f7 d9                	neg    %ecx
c0038119:	bf 2d 00 00 00       	mov    $0x2d,%edi
c003811e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0038125:	ba 01 00 00 00       	mov    $0x1,%edx
c003812a:	e9 7a f4 ff ff       	jmp    c00375a9 <_svfiprintf_r+0x189>
c003812f:	89 1c 24             	mov    %ebx,(%esp)
c0038132:	e8 79 f0 ff ff       	call   c00371b0 <strlen>
c0038137:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c003813d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0038144:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c003814b:	00 00 00 
c003814e:	89 55 14             	mov    %edx,0x14(%ebp)
c0038151:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0038157:	e9 b4 f4 ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c003815c:	8b 45 08             	mov    0x8(%ebp),%eax
c003815f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0038166:	00 
c0038167:	89 04 24             	mov    %eax,(%esp)
c003816a:	e8 b1 d9 ff ff       	call   c0035b20 <_malloc_r>
c003816f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0038172:	85 c0                	test   %eax,%eax
c0038174:	89 06                	mov    %eax,(%esi)
c0038176:	89 46 10             	mov    %eax,0x10(%esi)
c0038179:	0f 84 a3 00 00 00    	je     c0038222 <_svfiprintf_r+0xe02>
c003817f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0038182:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0038189:	e9 b2 f2 ff ff       	jmp    c0037440 <_svfiprintf_r+0x20>
c003818e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0038194:	b8 06 00 00 00       	mov    $0x6,%eax
c0038199:	89 55 14             	mov    %edx,0x14(%ebp)
c003819c:	83 ff 06             	cmp    $0x6,%edi
c003819f:	0f 46 c7             	cmovbe %edi,%eax
c00381a2:	85 c0                	test   %eax,%eax
c00381a4:	0f 49 d8             	cmovns %eax,%ebx
c00381a7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c00381ad:	bb 64 95 03 c0       	mov    $0xc0039564,%ebx
c00381b2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00381b8:	e9 61 f8 ff ff       	jmp    c0037a1e <_svfiprintf_r+0x5fe>
c00381bd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00381c3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00381ca:	89 55 14             	mov    %edx,0x14(%ebp)
c00381cd:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00381d4:	00 00 00 
c00381d7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00381dd:	e9 2e f4 ff ff       	jmp    c0037610 <_svfiprintf_r+0x1f0>
c00381e2:	89 da                	mov    %ebx,%edx
c00381e4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00381eb:	00 00 00 
c00381ee:	e9 29 f3 ff ff       	jmp    c003751c <_svfiprintf_r+0xfc>
c00381f3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00381f6:	89 da                	mov    %ebx,%edx
c00381f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00381fb:	8b 09                	mov    (%ecx),%ecx
c00381fd:	83 c0 04             	add    $0x4,%eax
c0038200:	89 45 14             	mov    %eax,0x14(%ebp)
c0038203:	85 c9                	test   %ecx,%ecx
c0038205:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c003820b:	0f 89 26 f3 ff ff    	jns    c0037537 <_svfiprintf_r+0x117>
c0038211:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0038218:	ff ff ff 
c003821b:	89 d0                	mov    %edx,%eax
c003821d:	e9 f4 f2 ff ff       	jmp    c0037516 <_svfiprintf_r+0xf6>
c0038222:	8b 45 08             	mov    0x8(%ebp),%eax
c0038225:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c003822b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0038230:	e9 06 fc ff ff       	jmp    c0037e3b <_svfiprintf_r+0xa1b>
c0038235:	66 90                	xchg   %ax,%ax
c0038237:	66 90                	xchg   %ax,%ax
c0038239:	66 90                	xchg   %ax,%ax
c003823b:	66 90                	xchg   %ax,%ax
c003823d:	66 90                	xchg   %ax,%ax
c003823f:	90                   	nop

c0038240 <_calloc_r>:
c0038240:	55                   	push   %ebp
c0038241:	89 e5                	mov    %esp,%ebp
c0038243:	53                   	push   %ebx
c0038244:	83 ec 14             	sub    $0x14,%esp
c0038247:	8b 45 10             	mov    0x10(%ebp),%eax
c003824a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c003824e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038252:	8b 45 08             	mov    0x8(%ebp),%eax
c0038255:	89 04 24             	mov    %eax,(%esp)
c0038258:	e8 c3 d8 ff ff       	call   c0035b20 <_malloc_r>
c003825d:	85 c0                	test   %eax,%eax
c003825f:	89 c3                	mov    %eax,%ebx
c0038261:	0f 84 91 00 00 00    	je     c00382f8 <_calloc_r+0xb8>
c0038267:	8b 40 fc             	mov    -0x4(%eax),%eax
c003826a:	83 e0 fc             	and    $0xfffffffc,%eax
c003826d:	83 e8 04             	sub    $0x4,%eax
c0038270:	83 f8 24             	cmp    $0x24,%eax
c0038273:	77 63                	ja     c00382d8 <_calloc_r+0x98>
c0038275:	83 f8 13             	cmp    $0x13,%eax
c0038278:	89 da                	mov    %ebx,%edx
c003827a:	77 1c                	ja     c0038298 <_calloc_r+0x58>
c003827c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0038282:	89 d8                	mov    %ebx,%eax
c0038284:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c003828b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0038292:	83 c4 14             	add    $0x14,%esp
c0038295:	5b                   	pop    %ebx
c0038296:	5d                   	pop    %ebp
c0038297:	c3                   	ret    
c0038298:	83 f8 1b             	cmp    $0x1b,%eax
c003829b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00382a1:	8d 53 08             	lea    0x8(%ebx),%edx
c00382a4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c00382ab:	76 cf                	jbe    c003827c <_calloc_r+0x3c>
c00382ad:	83 f8 24             	cmp    $0x24,%eax
c00382b0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c00382b7:	8d 53 10             	lea    0x10(%ebx),%edx
c00382ba:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c00382c1:	75 b9                	jne    c003827c <_calloc_r+0x3c>
c00382c3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c00382ca:	8d 53 18             	lea    0x18(%ebx),%edx
c00382cd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c00382d4:	eb a6                	jmp    c003827c <_calloc_r+0x3c>
c00382d6:	66 90                	xchg   %ax,%ax
c00382d8:	89 1c 24             	mov    %ebx,(%esp)
c00382db:	89 44 24 08          	mov    %eax,0x8(%esp)
c00382df:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00382e6:	00 
c00382e7:	e8 50 a2 ff ff       	call   c003253c <memset>
c00382ec:	83 c4 14             	add    $0x14,%esp
c00382ef:	89 d8                	mov    %ebx,%eax
c00382f1:	5b                   	pop    %ebx
c00382f2:	5d                   	pop    %ebp
c00382f3:	c3                   	ret    
c00382f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382f8:	31 c0                	xor    %eax,%eax
c00382fa:	eb 96                	jmp    c0038292 <_calloc_r+0x52>
c00382fc:	66 90                	xchg   %ax,%ax
c00382fe:	66 90                	xchg   %ax,%ax

c0038300 <_malloc_trim_r>:
c0038300:	55                   	push   %ebp
c0038301:	89 e5                	mov    %esp,%ebp
c0038303:	57                   	push   %edi
c0038304:	56                   	push   %esi
c0038305:	53                   	push   %ebx
c0038306:	83 ec 1c             	sub    $0x1c,%esp
c0038309:	8b 75 08             	mov    0x8(%ebp),%esi
c003830c:	89 34 24             	mov    %esi,(%esp)
c003830f:	e8 ec df ff ff       	call   c0036300 <__malloc_lock>
c0038314:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0038319:	8b 58 04             	mov    0x4(%eax),%ebx
c003831c:	83 e3 fc             	and    $0xfffffffc,%ebx
c003831f:	89 d8                	mov    %ebx,%eax
c0038321:	2b 45 0c             	sub    0xc(%ebp),%eax
c0038324:	05 ef 0f 00 00       	add    $0xfef,%eax
c0038329:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003832e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0038334:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c003833a:	7e 1c                	jle    c0038358 <_malloc_trim_r+0x58>
c003833c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0038343:	00 
c0038344:	89 34 24             	mov    %esi,(%esp)
c0038347:	e8 b4 ed ff ff       	call   c0037100 <_sbrk_r>
c003834c:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0038352:	01 da                	add    %ebx,%edx
c0038354:	39 d0                	cmp    %edx,%eax
c0038356:	74 18                	je     c0038370 <_malloc_trim_r+0x70>
c0038358:	89 34 24             	mov    %esi,(%esp)
c003835b:	e8 b0 df ff ff       	call   c0036310 <__malloc_unlock>
c0038360:	83 c4 1c             	add    $0x1c,%esp
c0038363:	31 c0                	xor    %eax,%eax
c0038365:	5b                   	pop    %ebx
c0038366:	5e                   	pop    %esi
c0038367:	5f                   	pop    %edi
c0038368:	5d                   	pop    %ebp
c0038369:	c3                   	ret    
c003836a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038370:	89 f8                	mov    %edi,%eax
c0038372:	f7 d8                	neg    %eax
c0038374:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038378:	89 34 24             	mov    %esi,(%esp)
c003837b:	e8 80 ed ff ff       	call   c0037100 <_sbrk_r>
c0038380:	83 f8 ff             	cmp    $0xffffffff,%eax
c0038383:	74 2b                	je     c00383b0 <_malloc_trim_r+0xb0>
c0038385:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c003838a:	29 fb                	sub    %edi,%ebx
c003838c:	83 cb 01             	or     $0x1,%ebx
c003838f:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0038395:	89 58 04             	mov    %ebx,0x4(%eax)
c0038398:	89 34 24             	mov    %esi,(%esp)
c003839b:	e8 70 df ff ff       	call   c0036310 <__malloc_unlock>
c00383a0:	83 c4 1c             	add    $0x1c,%esp
c00383a3:	b8 01 00 00 00       	mov    $0x1,%eax
c00383a8:	5b                   	pop    %ebx
c00383a9:	5e                   	pop    %esi
c00383aa:	5f                   	pop    %edi
c00383ab:	5d                   	pop    %ebp
c00383ac:	c3                   	ret    
c00383ad:	8d 76 00             	lea    0x0(%esi),%esi
c00383b0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00383b7:	00 
c00383b8:	89 34 24             	mov    %esi,(%esp)
c00383bb:	e8 40 ed ff ff       	call   c0037100 <_sbrk_r>
c00383c0:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c00383c6:	89 c1                	mov    %eax,%ecx
c00383c8:	29 d1                	sub    %edx,%ecx
c00383ca:	83 f9 0f             	cmp    $0xf,%ecx
c00383cd:	7e 89                	jle    c0038358 <_malloc_trim_r+0x58>
c00383cf:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c00383d5:	83 c9 01             	or     $0x1,%ecx
c00383d8:	89 4a 04             	mov    %ecx,0x4(%edx)
c00383db:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c00383e0:	e9 73 ff ff ff       	jmp    c0038358 <_malloc_trim_r+0x58>
c00383e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00383e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00383f0 <_free_r>:
c00383f0:	55                   	push   %ebp
c00383f1:	89 e5                	mov    %esp,%ebp
c00383f3:	57                   	push   %edi
c00383f4:	56                   	push   %esi
c00383f5:	53                   	push   %ebx
c00383f6:	83 ec 1c             	sub    $0x1c,%esp
c00383f9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00383fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00383ff:	85 f6                	test   %esi,%esi
c0038401:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038404:	0f 84 fe 00 00 00    	je     c0038508 <_free_r+0x118>
c003840a:	89 04 24             	mov    %eax,(%esp)
c003840d:	e8 ee de ff ff       	call   c0036300 <__malloc_lock>
c0038412:	8b 7e fc             	mov    -0x4(%esi),%edi
c0038415:	8d 56 f8             	lea    -0x8(%esi),%edx
c0038418:	89 f8                	mov    %edi,%eax
c003841a:	83 e0 fe             	and    $0xfffffffe,%eax
c003841d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0038420:	8b 59 04             	mov    0x4(%ecx),%ebx
c0038423:	83 e3 fc             	and    $0xfffffffc,%ebx
c0038426:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c003842c:	0f 84 0e 01 00 00    	je     c0038540 <_free_r+0x150>
c0038432:	83 e7 01             	and    $0x1,%edi
c0038435:	89 59 04             	mov    %ebx,0x4(%ecx)
c0038438:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c003843f:	75 1f                	jne    c0038460 <_free_r+0x70>
c0038441:	8b 76 f8             	mov    -0x8(%esi),%esi
c0038444:	29 f2                	sub    %esi,%edx
c0038446:	01 f0                	add    %esi,%eax
c0038448:	8b 72 08             	mov    0x8(%edx),%esi
c003844b:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0038451:	0f 84 39 01 00 00    	je     c0038590 <_free_r+0x1a0>
c0038457:	8b 7a 0c             	mov    0xc(%edx),%edi
c003845a:	89 7e 0c             	mov    %edi,0xc(%esi)
c003845d:	89 77 08             	mov    %esi,0x8(%edi)
c0038460:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0038465:	75 21                	jne    c0038488 <_free_r+0x98>
c0038467:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003846a:	01 d8                	add    %ebx,%eax
c003846c:	8b 59 08             	mov    0x8(%ecx),%ebx
c003846f:	85 f6                	test   %esi,%esi
c0038471:	75 0c                	jne    c003847f <_free_r+0x8f>
c0038473:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0038479:	0f 84 21 01 00 00    	je     c00385a0 <_free_r+0x1b0>
c003847f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0038482:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0038485:	89 59 08             	mov    %ebx,0x8(%ecx)
c0038488:	89 c1                	mov    %eax,%ecx
c003848a:	83 c9 01             	or     $0x1,%ecx
c003848d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038490:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038493:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0038496:	85 c9                	test   %ecx,%ecx
c0038498:	75 56                	jne    c00384f0 <_free_r+0x100>
c003849a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c003849f:	76 6f                	jbe    c0038510 <_free_r+0x120>
c00384a1:	89 c1                	mov    %eax,%ecx
c00384a3:	c1 e9 09             	shr    $0x9,%ecx
c00384a6:	83 f9 04             	cmp    $0x4,%ecx
c00384a9:	0f 87 21 01 00 00    	ja     c00385d0 <_free_r+0x1e0>
c00384af:	89 c1                	mov    %eax,%ecx
c00384b1:	c1 e9 06             	shr    $0x6,%ecx
c00384b4:	83 c1 38             	add    $0x38,%ecx
c00384b7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00384ba:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c00384c1:	8b 5e 08             	mov    0x8(%esi),%ebx
c00384c4:	39 f3                	cmp    %esi,%ebx
c00384c6:	0f 84 14 01 00 00    	je     c00385e0 <_free_r+0x1f0>
c00384cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00384d0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c00384d3:	83 e1 fc             	and    $0xfffffffc,%ecx
c00384d6:	39 c8                	cmp    %ecx,%eax
c00384d8:	73 07                	jae    c00384e1 <_free_r+0xf1>
c00384da:	8b 5b 08             	mov    0x8(%ebx),%ebx
c00384dd:	39 de                	cmp    %ebx,%esi
c00384df:	75 ef                	jne    c00384d0 <_free_r+0xe0>
c00384e1:	8b 43 0c             	mov    0xc(%ebx),%eax
c00384e4:	89 42 0c             	mov    %eax,0xc(%edx)
c00384e7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00384ea:	89 50 08             	mov    %edx,0x8(%eax)
c00384ed:	89 53 0c             	mov    %edx,0xc(%ebx)
c00384f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384f3:	89 45 08             	mov    %eax,0x8(%ebp)
c00384f6:	83 c4 1c             	add    $0x1c,%esp
c00384f9:	5b                   	pop    %ebx
c00384fa:	5e                   	pop    %esi
c00384fb:	5f                   	pop    %edi
c00384fc:	5d                   	pop    %ebp
c00384fd:	e9 0e de ff ff       	jmp    c0036310 <__malloc_unlock>
c0038502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038508:	83 c4 1c             	add    $0x1c,%esp
c003850b:	5b                   	pop    %ebx
c003850c:	5e                   	pop    %esi
c003850d:	5f                   	pop    %edi
c003850e:	5d                   	pop    %ebp
c003850f:	c3                   	ret    
c0038510:	c1 e8 03             	shr    $0x3,%eax
c0038513:	bb 01 00 00 00       	mov    $0x1,%ebx
c0038518:	89 c1                	mov    %eax,%ecx
c003851a:	c1 f9 02             	sar    $0x2,%ecx
c003851d:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0038524:	d3 e3                	shl    %cl,%ebx
c0038526:	8b 48 08             	mov    0x8(%eax),%ecx
c0038529:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c003852f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038532:	89 4a 08             	mov    %ecx,0x8(%edx)
c0038535:	89 50 08             	mov    %edx,0x8(%eax)
c0038538:	89 51 0c             	mov    %edx,0xc(%ecx)
c003853b:	eb b3                	jmp    c00384f0 <_free_r+0x100>
c003853d:	8d 76 00             	lea    0x0(%esi),%esi
c0038540:	01 d8                	add    %ebx,%eax
c0038542:	83 e7 01             	and    $0x1,%edi
c0038545:	75 13                	jne    c003855a <_free_r+0x16a>
c0038547:	8b 4e f8             	mov    -0x8(%esi),%ecx
c003854a:	29 ca                	sub    %ecx,%edx
c003854c:	01 c8                	add    %ecx,%eax
c003854e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0038551:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0038554:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0038557:	89 59 08             	mov    %ebx,0x8(%ecx)
c003855a:	89 c1                	mov    %eax,%ecx
c003855c:	83 c9 01             	or     $0x1,%ecx
c003855f:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0038565:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038568:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c003856e:	72 80                	jb     c00384f0 <_free_r+0x100>
c0038570:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0038575:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038579:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003857c:	89 04 24             	mov    %eax,(%esp)
c003857f:	e8 7c fd ff ff       	call   c0038300 <_malloc_trim_r>
c0038584:	e9 67 ff ff ff       	jmp    c00384f0 <_free_r+0x100>
c0038589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038590:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0038597:	e9 c4 fe ff ff       	jmp    c0038460 <_free_r+0x70>
c003859c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385a0:	89 c1                	mov    %eax,%ecx
c00385a2:	83 c9 01             	or     $0x1,%ecx
c00385a5:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c00385ab:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c00385b1:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c00385b8:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c00385bf:	89 4a 04             	mov    %ecx,0x4(%edx)
c00385c2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00385c5:	e9 26 ff ff ff       	jmp    c00384f0 <_free_r+0x100>
c00385ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00385d0:	83 f9 14             	cmp    $0x14,%ecx
c00385d3:	77 23                	ja     c00385f8 <_free_r+0x208>
c00385d5:	83 c1 5b             	add    $0x5b,%ecx
c00385d8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00385db:	e9 da fe ff ff       	jmp    c00384ba <_free_r+0xca>
c00385e0:	c1 f9 02             	sar    $0x2,%ecx
c00385e3:	b8 01 00 00 00       	mov    $0x1,%eax
c00385e8:	d3 e0                	shl    %cl,%eax
c00385ea:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c00385f0:	89 d8                	mov    %ebx,%eax
c00385f2:	e9 ed fe ff ff       	jmp    c00384e4 <_free_r+0xf4>
c00385f7:	90                   	nop
c00385f8:	83 f9 54             	cmp    $0x54,%ecx
c00385fb:	77 10                	ja     c003860d <_free_r+0x21d>
c00385fd:	89 c1                	mov    %eax,%ecx
c00385ff:	c1 e9 0c             	shr    $0xc,%ecx
c0038602:	83 c1 6e             	add    $0x6e,%ecx
c0038605:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038608:	e9 ad fe ff ff       	jmp    c00384ba <_free_r+0xca>
c003860d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0038613:	77 10                	ja     c0038625 <_free_r+0x235>
c0038615:	89 c1                	mov    %eax,%ecx
c0038617:	c1 e9 0f             	shr    $0xf,%ecx
c003861a:	83 c1 77             	add    $0x77,%ecx
c003861d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038620:	e9 95 fe ff ff       	jmp    c00384ba <_free_r+0xca>
c0038625:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c003862b:	77 10                	ja     c003863d <_free_r+0x24d>
c003862d:	89 c1                	mov    %eax,%ecx
c003862f:	c1 e9 12             	shr    $0x12,%ecx
c0038632:	83 c1 7c             	add    $0x7c,%ecx
c0038635:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038638:	e9 7d fe ff ff       	jmp    c00384ba <_free_r+0xca>
c003863d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0038642:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0038647:	e9 6e fe ff ff       	jmp    c00384ba <_free_r+0xca>
c003864c:	66 90                	xchg   %ax,%ax
c003864e:	66 90                	xchg   %ax,%ax

c0038650 <memmove>:
c0038650:	55                   	push   %ebp
c0038651:	89 e5                	mov    %esp,%ebp
c0038653:	56                   	push   %esi
c0038654:	57                   	push   %edi
c0038655:	53                   	push   %ebx
c0038656:	8b 7d 08             	mov    0x8(%ebp),%edi
c0038659:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003865c:	8b 75 0c             	mov    0xc(%ebp),%esi
c003865f:	fc                   	cld    
c0038660:	39 fe                	cmp    %edi,%esi
c0038662:	73 43                	jae    c00386a7 <memmove+0x57>
c0038664:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0038668:	39 df                	cmp    %ebx,%edi
c003866a:	77 3b                	ja     c00386a7 <memmove+0x57>
c003866c:	01 ce                	add    %ecx,%esi
c003866e:	01 cf                	add    %ecx,%edi
c0038670:	fd                   	std    
c0038671:	83 f9 08             	cmp    $0x8,%ecx
c0038674:	76 2b                	jbe    c00386a1 <memmove+0x51>
c0038676:	89 fa                	mov    %edi,%edx
c0038678:	89 cb                	mov    %ecx,%ebx
c003867a:	83 e2 03             	and    $0x3,%edx
c003867d:	74 0c                	je     c003868b <memmove+0x3b>
c003867f:	89 d1                	mov    %edx,%ecx
c0038681:	4e                   	dec    %esi
c0038682:	4f                   	dec    %edi
c0038683:	29 cb                	sub    %ecx,%ebx
c0038685:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038687:	89 d9                	mov    %ebx,%ecx
c0038689:	46                   	inc    %esi
c003868a:	47                   	inc    %edi
c003868b:	c1 e9 02             	shr    $0x2,%ecx
c003868e:	83 ee 04             	sub    $0x4,%esi
c0038691:	83 ef 04             	sub    $0x4,%edi
c0038694:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0038696:	83 c6 04             	add    $0x4,%esi
c0038699:	83 c7 04             	add    $0x4,%edi
c003869c:	89 d9                	mov    %ebx,%ecx
c003869e:	83 e1 03             	and    $0x3,%ecx
c00386a1:	4e                   	dec    %esi
c00386a2:	4f                   	dec    %edi
c00386a3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00386a5:	eb 2a                	jmp    c00386d1 <memmove+0x81>
c00386a7:	83 f9 08             	cmp    $0x8,%ecx
c00386aa:	76 23                	jbe    c00386cf <memmove+0x7f>
c00386ac:	89 fa                	mov    %edi,%edx
c00386ae:	89 cb                	mov    %ecx,%ebx
c00386b0:	83 e2 03             	and    $0x3,%edx
c00386b3:	74 10                	je     c00386c5 <memmove+0x75>
c00386b5:	b9 04 00 00 00       	mov    $0x4,%ecx
c00386ba:	29 d1                	sub    %edx,%ecx
c00386bc:	83 e1 03             	and    $0x3,%ecx
c00386bf:	29 cb                	sub    %ecx,%ebx
c00386c1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00386c3:	89 d9                	mov    %ebx,%ecx
c00386c5:	c1 e9 02             	shr    $0x2,%ecx
c00386c8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c00386ca:	89 d9                	mov    %ebx,%ecx
c00386cc:	83 e1 03             	and    $0x3,%ecx
c00386cf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00386d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00386d4:	fc                   	cld    
c00386d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00386d8:	5b                   	pop    %ebx
c00386d9:	5f                   	pop    %edi
c00386da:	5e                   	pop    %esi
c00386db:	c9                   	leave  
c00386dc:	c3                   	ret    
c00386dd:	66 90                	xchg   %ax,%ax
c00386df:	90                   	nop

c00386e0 <_realloc_r>:
c00386e0:	55                   	push   %ebp
c00386e1:	89 e5                	mov    %esp,%ebp
c00386e3:	57                   	push   %edi
c00386e4:	56                   	push   %esi
c00386e5:	53                   	push   %ebx
c00386e6:	83 ec 3c             	sub    $0x3c,%esp
c00386e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00386ec:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00386ef:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00386f2:	8b 45 10             	mov    0x10(%ebp),%eax
c00386f5:	85 ff                	test   %edi,%edi
c00386f7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00386fa:	0f 84 50 02 00 00    	je     c0038950 <_realloc_r+0x270>
c0038700:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038703:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038706:	89 04 24             	mov    %eax,(%esp)
c0038709:	e8 f2 db ff ff       	call   c0036300 <__malloc_lock>
c003870e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038711:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038714:	89 c3                	mov    %eax,%ebx
c0038716:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038719:	83 e3 fc             	and    $0xfffffffc,%ebx
c003871c:	83 fa 16             	cmp    $0x16,%edx
c003871f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038722:	0f 87 00 01 00 00    	ja     c0038828 <_realloc_r+0x148>
c0038728:	31 d2                	xor    %edx,%edx
c003872a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038731:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038738:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003873b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003873e:	0f 82 1c 02 00 00    	jb     c0038960 <_realloc_r+0x280>
c0038744:	84 d2                	test   %dl,%dl
c0038746:	0f 85 14 02 00 00    	jne    c0038960 <_realloc_r+0x280>
c003874c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003874f:	0f 8d eb 00 00 00    	jge    c0038840 <_realloc_r+0x160>
c0038755:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c003875b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003875e:	39 d1                	cmp    %edx,%ecx
c0038760:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038763:	0f 84 6f 02 00 00    	je     c00389d8 <_realloc_r+0x2f8>
c0038769:	8b 4a 04             	mov    0x4(%edx),%ecx
c003876c:	89 c8                	mov    %ecx,%eax
c003876e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038771:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038776:	0f 84 f4 00 00 00    	je     c0038870 <_realloc_r+0x190>
c003877c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038783:	31 d2                	xor    %edx,%edx
c0038785:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038789:	0f 85 39 01 00 00    	jne    c00388c8 <_realloc_r+0x1e8>
c003878f:	89 f1                	mov    %esi,%ecx
c0038791:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038794:	8b 41 04             	mov    0x4(%ecx),%eax
c0038797:	83 e0 fc             	and    $0xfffffffc,%eax
c003879a:	85 d2                	test   %edx,%edx
c003879c:	0f 84 f6 02 00 00    	je     c0038a98 <_realloc_r+0x3b8>
c00387a2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00387a5:	0f 84 f5 02 00 00    	je     c0038aa0 <_realloc_r+0x3c0>
c00387ab:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00387ae:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00387b1:	01 d8                	add    %ebx,%eax
c00387b3:	01 c2                	add    %eax,%edx
c00387b5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00387b8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00387bb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00387be:	0f 8c ac 01 00 00    	jl     c0038970 <_realloc_r+0x290>
c00387c4:	8b 42 0c             	mov    0xc(%edx),%eax
c00387c7:	83 eb 04             	sub    $0x4,%ebx
c00387ca:	8b 52 08             	mov    0x8(%edx),%edx
c00387cd:	83 fb 24             	cmp    $0x24,%ebx
c00387d0:	8d 71 08             	lea    0x8(%ecx),%esi
c00387d3:	89 42 0c             	mov    %eax,0xc(%edx)
c00387d6:	89 50 08             	mov    %edx,0x8(%eax)
c00387d9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00387dc:	8b 51 08             	mov    0x8(%ecx),%edx
c00387df:	89 42 0c             	mov    %eax,0xc(%edx)
c00387e2:	89 50 08             	mov    %edx,0x8(%eax)
c00387e5:	0f 87 85 03 00 00    	ja     c0038b70 <_realloc_r+0x490>
c00387eb:	83 fb 13             	cmp    $0x13,%ebx
c00387ee:	89 f0                	mov    %esi,%eax
c00387f0:	76 1a                	jbe    c003880c <_realloc_r+0x12c>
c00387f2:	8b 07                	mov    (%edi),%eax
c00387f4:	83 fb 1b             	cmp    $0x1b,%ebx
c00387f7:	89 41 08             	mov    %eax,0x8(%ecx)
c00387fa:	8b 47 04             	mov    0x4(%edi),%eax
c00387fd:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038800:	0f 87 8f 03 00 00    	ja     c0038b95 <_realloc_r+0x4b5>
c0038806:	8d 41 10             	lea    0x10(%ecx),%eax
c0038809:	83 c7 08             	add    $0x8,%edi
c003880c:	8b 17                	mov    (%edi),%edx
c003880e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038811:	89 10                	mov    %edx,(%eax)
c0038813:	8b 57 04             	mov    0x4(%edi),%edx
c0038816:	89 50 04             	mov    %edx,0x4(%eax)
c0038819:	8b 57 08             	mov    0x8(%edi),%edx
c003881c:	89 f7                	mov    %esi,%edi
c003881e:	89 ce                	mov    %ecx,%esi
c0038820:	89 50 08             	mov    %edx,0x8(%eax)
c0038823:	8b 41 04             	mov    0x4(%ecx),%eax
c0038826:	eb 1b                	jmp    c0038843 <_realloc_r+0x163>
c0038828:	83 e2 f8             	and    $0xfffffff8,%edx
c003882b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003882e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038831:	c1 ea 1f             	shr    $0x1f,%edx
c0038834:	e9 ff fe ff ff       	jmp    c0038738 <_realloc_r+0x58>
c0038839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038840:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038843:	89 da                	mov    %ebx,%edx
c0038845:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038848:	83 fa 0f             	cmp    $0xf,%edx
c003884b:	77 4b                	ja     c0038898 <_realloc_r+0x1b8>
c003884d:	83 e0 01             	and    $0x1,%eax
c0038850:	09 d8                	or     %ebx,%eax
c0038852:	89 46 04             	mov    %eax,0x4(%esi)
c0038855:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003885a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003885d:	89 04 24             	mov    %eax,(%esp)
c0038860:	e8 ab da ff ff       	call   c0036310 <__malloc_unlock>
c0038865:	89 f8                	mov    %edi,%eax
c0038867:	83 c4 3c             	add    $0x3c,%esp
c003886a:	5b                   	pop    %ebx
c003886b:	5e                   	pop    %esi
c003886c:	5f                   	pop    %edi
c003886d:	5d                   	pop    %ebp
c003886e:	c3                   	ret    
c003886f:	90                   	nop
c0038870:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038873:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038876:	01 d9                	add    %ebx,%ecx
c0038878:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003887b:	0f 8c 04 ff ff ff    	jl     c0038785 <_realloc_r+0xa5>
c0038881:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038884:	8b 52 08             	mov    0x8(%edx),%edx
c0038887:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003888a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003888d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038890:	89 cb                	mov    %ecx,%ebx
c0038892:	eb af                	jmp    c0038843 <_realloc_r+0x163>
c0038894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038898:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003889b:	83 e0 01             	and    $0x1,%eax
c003889e:	09 d8                	or     %ebx,%eax
c00388a0:	89 46 04             	mov    %eax,0x4(%esi)
c00388a3:	89 d0                	mov    %edx,%eax
c00388a5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00388a8:	83 c8 01             	or     $0x1,%eax
c00388ab:	89 41 04             	mov    %eax,0x4(%ecx)
c00388ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00388b1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00388b6:	83 c1 08             	add    $0x8,%ecx
c00388b9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00388bd:	89 04 24             	mov    %eax,(%esp)
c00388c0:	e8 2b fb ff ff       	call   c00383f0 <_free_r>
c00388c5:	eb 93                	jmp    c003885a <_realloc_r+0x17a>
c00388c7:	90                   	nop
c00388c8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00388cb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00388cf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00388d2:	89 04 24             	mov    %eax,(%esp)
c00388d5:	e8 46 d2 ff ff       	call   c0035b20 <_malloc_r>
c00388da:	85 c0                	test   %eax,%eax
c00388dc:	89 c1                	mov    %eax,%ecx
c00388de:	0f 84 65 03 00 00    	je     c0038c49 <_realloc_r+0x569>
c00388e4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00388e7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00388ea:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00388ed:	89 c2                	mov    %eax,%edx
c00388ef:	83 e2 fe             	and    $0xfffffffe,%edx
c00388f2:	01 f2                	add    %esi,%edx
c00388f4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00388f7:	0f 84 63 02 00 00    	je     c0038b60 <_realloc_r+0x480>
c00388fd:	83 eb 04             	sub    $0x4,%ebx
c0038900:	83 fb 24             	cmp    $0x24,%ebx
c0038903:	0f 87 6f 01 00 00    	ja     c0038a78 <_realloc_r+0x398>
c0038909:	83 fb 13             	cmp    $0x13,%ebx
c003890c:	0f 87 ee 00 00 00    	ja     c0038a00 <_realloc_r+0x320>
c0038912:	89 c8                	mov    %ecx,%eax
c0038914:	89 fa                	mov    %edi,%edx
c0038916:	8b 1a                	mov    (%edx),%ebx
c0038918:	89 18                	mov    %ebx,(%eax)
c003891a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003891d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038920:	8b 52 08             	mov    0x8(%edx),%edx
c0038923:	89 50 08             	mov    %edx,0x8(%eax)
c0038926:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038929:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003892d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038930:	89 34 24             	mov    %esi,(%esp)
c0038933:	e8 b8 fa ff ff       	call   c00383f0 <_free_r>
c0038938:	89 34 24             	mov    %esi,(%esp)
c003893b:	e8 d0 d9 ff ff       	call   c0036310 <__malloc_unlock>
c0038940:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038943:	83 c4 3c             	add    $0x3c,%esp
c0038946:	5b                   	pop    %ebx
c0038947:	5e                   	pop    %esi
c0038948:	5f                   	pop    %edi
c0038949:	89 c8                	mov    %ecx,%eax
c003894b:	5d                   	pop    %ebp
c003894c:	c3                   	ret    
c003894d:	8d 76 00             	lea    0x0(%esi),%esi
c0038950:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038953:	83 c4 3c             	add    $0x3c,%esp
c0038956:	5b                   	pop    %ebx
c0038957:	5e                   	pop    %esi
c0038958:	5f                   	pop    %edi
c0038959:	5d                   	pop    %ebp
c003895a:	e9 c1 d1 ff ff       	jmp    c0035b20 <_malloc_r>
c003895f:	90                   	nop
c0038960:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038963:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038969:	31 c0                	xor    %eax,%eax
c003896b:	e9 f7 fe ff ff       	jmp    c0038867 <_realloc_r+0x187>
c0038970:	89 c2                	mov    %eax,%edx
c0038972:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038975:	0f 8c 4d ff ff ff    	jl     c00388c8 <_realloc_r+0x1e8>
c003897b:	8b 71 08             	mov    0x8(%ecx),%esi
c003897e:	83 eb 04             	sub    $0x4,%ebx
c0038981:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038984:	83 fb 24             	cmp    $0x24,%ebx
c0038987:	89 46 0c             	mov    %eax,0xc(%esi)
c003898a:	89 70 08             	mov    %esi,0x8(%eax)
c003898d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038990:	0f 87 88 00 00 00    	ja     c0038a1e <_realloc_r+0x33e>
c0038996:	83 fb 13             	cmp    $0x13,%ebx
c0038999:	89 f0                	mov    %esi,%eax
c003899b:	76 1a                	jbe    c00389b7 <_realloc_r+0x2d7>
c003899d:	8b 07                	mov    (%edi),%eax
c003899f:	83 fb 1b             	cmp    $0x1b,%ebx
c00389a2:	89 41 08             	mov    %eax,0x8(%ecx)
c00389a5:	8b 47 04             	mov    0x4(%edi),%eax
c00389a8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00389ab:	0f 87 17 02 00 00    	ja     c0038bc8 <_realloc_r+0x4e8>
c00389b1:	8d 41 10             	lea    0x10(%ecx),%eax
c00389b4:	83 c7 08             	add    $0x8,%edi
c00389b7:	8b 1f                	mov    (%edi),%ebx
c00389b9:	89 18                	mov    %ebx,(%eax)
c00389bb:	8b 5f 04             	mov    0x4(%edi),%ebx
c00389be:	89 58 04             	mov    %ebx,0x4(%eax)
c00389c1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00389c4:	89 f7                	mov    %esi,%edi
c00389c6:	89 ce                	mov    %ecx,%esi
c00389c8:	89 58 08             	mov    %ebx,0x8(%eax)
c00389cb:	89 d3                	mov    %edx,%ebx
c00389cd:	8b 41 04             	mov    0x4(%ecx),%eax
c00389d0:	e9 6e fe ff ff       	jmp    c0038843 <_realloc_r+0x163>
c00389d5:	8d 76 00             	lea    0x0(%esi),%esi
c00389d8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00389db:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00389de:	8b 48 04             	mov    0x4(%eax),%ecx
c00389e1:	83 c2 10             	add    $0x10,%edx
c00389e4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00389e7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00389eb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00389ee:	01 d9                	add    %ebx,%ecx
c00389f0:	39 d1                	cmp    %edx,%ecx
c00389f2:	7d 54                	jge    c0038a48 <_realloc_r+0x368>
c00389f4:	89 c2                	mov    %eax,%edx
c00389f6:	e9 8a fd ff ff       	jmp    c0038785 <_realloc_r+0xa5>
c00389fb:	90                   	nop
c00389fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038a00:	8b 07                	mov    (%edi),%eax
c0038a02:	83 fb 1b             	cmp    $0x1b,%ebx
c0038a05:	89 01                	mov    %eax,(%ecx)
c0038a07:	8b 47 04             	mov    0x4(%edi),%eax
c0038a0a:	89 41 04             	mov    %eax,0x4(%ecx)
c0038a0d:	0f 87 2d 01 00 00    	ja     c0038b40 <_realloc_r+0x460>
c0038a13:	8d 41 08             	lea    0x8(%ecx),%eax
c0038a16:	8d 57 08             	lea    0x8(%edi),%edx
c0038a19:	e9 f8 fe ff ff       	jmp    c0038916 <_realloc_r+0x236>
c0038a1e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038a22:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038a26:	89 f7                	mov    %esi,%edi
c0038a28:	89 34 24             	mov    %esi,(%esp)
c0038a2b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038a2e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038a31:	e8 1a fc ff ff       	call   c0038650 <memmove>
c0038a36:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038a39:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0038a3c:	8b 41 04             	mov    0x4(%ecx),%eax
c0038a3f:	89 ce                	mov    %ecx,%esi
c0038a41:	89 d3                	mov    %edx,%ebx
c0038a43:	e9 fb fd ff ff       	jmp    c0038843 <_realloc_r+0x163>
c0038a48:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038a4b:	29 d9                	sub    %ebx,%ecx
c0038a4d:	01 de                	add    %ebx,%esi
c0038a4f:	83 c9 01             	or     $0x1,%ecx
c0038a52:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c0038a58:	89 4e 04             	mov    %ecx,0x4(%esi)
c0038a5b:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038a5e:	83 e0 01             	and    $0x1,%eax
c0038a61:	09 d8                	or     %ebx,%eax
c0038a63:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038a66:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038a69:	89 04 24             	mov    %eax,(%esp)
c0038a6c:	e8 9f d8 ff ff       	call   c0036310 <__malloc_unlock>
c0038a71:	89 f8                	mov    %edi,%eax
c0038a73:	e9 ef fd ff ff       	jmp    c0038867 <_realloc_r+0x187>
c0038a78:	89 0c 24             	mov    %ecx,(%esp)
c0038a7b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038a7f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038a83:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038a86:	e8 c5 fb ff ff       	call   c0038650 <memmove>
c0038a8b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038a8e:	e9 93 fe ff ff       	jmp    c0038926 <_realloc_r+0x246>
c0038a93:	90                   	nop
c0038a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038a98:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038a9b:	e9 d2 fe ff ff       	jmp    c0038972 <_realloc_r+0x292>
c0038aa0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038aa3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038aa6:	01 d0                	add    %edx,%eax
c0038aa8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038aab:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0038aae:	83 c0 10             	add    $0x10,%eax
c0038ab1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038ab4:	0f 8c b8 fe ff ff    	jl     c0038972 <_realloc_r+0x292>
c0038aba:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038abd:	83 eb 04             	sub    $0x4,%ebx
c0038ac0:	8b 51 08             	mov    0x8(%ecx),%edx
c0038ac3:	83 fb 24             	cmp    $0x24,%ebx
c0038ac6:	8d 71 08             	lea    0x8(%ecx),%esi
c0038ac9:	89 42 0c             	mov    %eax,0xc(%edx)
c0038acc:	89 50 08             	mov    %edx,0x8(%eax)
c0038acf:	0f 87 3d 01 00 00    	ja     c0038c12 <_realloc_r+0x532>
c0038ad5:	83 fb 13             	cmp    $0x13,%ebx
c0038ad8:	89 f0                	mov    %esi,%eax
c0038ada:	76 1a                	jbe    c0038af6 <_realloc_r+0x416>
c0038adc:	8b 07                	mov    (%edi),%eax
c0038ade:	83 fb 1b             	cmp    $0x1b,%ebx
c0038ae1:	89 41 08             	mov    %eax,0x8(%ecx)
c0038ae4:	8b 47 04             	mov    0x4(%edi),%eax
c0038ae7:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038aea:	0f 87 3d 01 00 00    	ja     c0038c2d <_realloc_r+0x54d>
c0038af0:	8d 41 10             	lea    0x10(%ecx),%eax
c0038af3:	83 c7 08             	add    $0x8,%edi
c0038af6:	8b 17                	mov    (%edi),%edx
c0038af8:	89 10                	mov    %edx,(%eax)
c0038afa:	8b 57 04             	mov    0x4(%edi),%edx
c0038afd:	89 50 04             	mov    %edx,0x4(%eax)
c0038b00:	8b 57 08             	mov    0x8(%edi),%edx
c0038b03:	89 50 08             	mov    %edx,0x8(%eax)
c0038b06:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038b09:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0038b0c:	89 d8                	mov    %ebx,%eax
c0038b0e:	29 df                	sub    %ebx,%edi
c0038b10:	01 c8                	add    %ecx,%eax
c0038b12:	83 cf 01             	or     $0x1,%edi
c0038b15:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c0038b1a:	89 78 04             	mov    %edi,0x4(%eax)
c0038b1d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038b20:	83 e0 01             	and    $0x1,%eax
c0038b23:	09 d8                	or     %ebx,%eax
c0038b25:	89 41 04             	mov    %eax,0x4(%ecx)
c0038b28:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038b2b:	89 04 24             	mov    %eax,(%esp)
c0038b2e:	e8 dd d7 ff ff       	call   c0036310 <__malloc_unlock>
c0038b33:	89 f0                	mov    %esi,%eax
c0038b35:	e9 2d fd ff ff       	jmp    c0038867 <_realloc_r+0x187>
c0038b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038b40:	8b 47 08             	mov    0x8(%edi),%eax
c0038b43:	83 fb 24             	cmp    $0x24,%ebx
c0038b46:	89 41 08             	mov    %eax,0x8(%ecx)
c0038b49:	8b 47 0c             	mov    0xc(%edi),%eax
c0038b4c:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038b4f:	74 60                	je     c0038bb1 <_realloc_r+0x4d1>
c0038b51:	8d 41 10             	lea    0x10(%ecx),%eax
c0038b54:	8d 57 10             	lea    0x10(%edi),%edx
c0038b57:	e9 ba fd ff ff       	jmp    c0038916 <_realloc_r+0x236>
c0038b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038b60:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038b63:	83 e2 fc             	and    $0xfffffffc,%edx
c0038b66:	01 d3                	add    %edx,%ebx
c0038b68:	e9 d6 fc ff ff       	jmp    c0038843 <_realloc_r+0x163>
c0038b6d:	8d 76 00             	lea    0x0(%esi),%esi
c0038b70:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038b74:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038b78:	89 f7                	mov    %esi,%edi
c0038b7a:	89 34 24             	mov    %esi,(%esp)
c0038b7d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038b80:	e8 cb fa ff ff       	call   c0038650 <memmove>
c0038b85:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038b88:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038b8b:	8b 41 04             	mov    0x4(%ecx),%eax
c0038b8e:	89 ce                	mov    %ecx,%esi
c0038b90:	e9 ae fc ff ff       	jmp    c0038843 <_realloc_r+0x163>
c0038b95:	8b 47 08             	mov    0x8(%edi),%eax
c0038b98:	83 fb 24             	cmp    $0x24,%ebx
c0038b9b:	89 41 10             	mov    %eax,0x10(%ecx)
c0038b9e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038ba1:	89 41 14             	mov    %eax,0x14(%ecx)
c0038ba4:	74 3e                	je     c0038be4 <_realloc_r+0x504>
c0038ba6:	8d 41 18             	lea    0x18(%ecx),%eax
c0038ba9:	83 c7 10             	add    $0x10,%edi
c0038bac:	e9 5b fc ff ff       	jmp    c003880c <_realloc_r+0x12c>
c0038bb1:	8b 47 10             	mov    0x10(%edi),%eax
c0038bb4:	8d 57 18             	lea    0x18(%edi),%edx
c0038bb7:	89 41 10             	mov    %eax,0x10(%ecx)
c0038bba:	8b 5f 14             	mov    0x14(%edi),%ebx
c0038bbd:	8d 41 18             	lea    0x18(%ecx),%eax
c0038bc0:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038bc3:	e9 4e fd ff ff       	jmp    c0038916 <_realloc_r+0x236>
c0038bc8:	8b 47 08             	mov    0x8(%edi),%eax
c0038bcb:	83 fb 24             	cmp    $0x24,%ebx
c0038bce:	89 41 10             	mov    %eax,0x10(%ecx)
c0038bd1:	8b 47 0c             	mov    0xc(%edi),%eax
c0038bd4:	89 41 14             	mov    %eax,0x14(%ecx)
c0038bd7:	74 22                	je     c0038bfb <_realloc_r+0x51b>
c0038bd9:	8d 41 18             	lea    0x18(%ecx),%eax
c0038bdc:	83 c7 10             	add    $0x10,%edi
c0038bdf:	e9 d3 fd ff ff       	jmp    c00389b7 <_realloc_r+0x2d7>
c0038be4:	8b 47 10             	mov    0x10(%edi),%eax
c0038be7:	83 c7 18             	add    $0x18,%edi
c0038bea:	89 41 18             	mov    %eax,0x18(%ecx)
c0038bed:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038bf0:	8d 41 20             	lea    0x20(%ecx),%eax
c0038bf3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038bf6:	e9 11 fc ff ff       	jmp    c003880c <_realloc_r+0x12c>
c0038bfb:	8b 47 10             	mov    0x10(%edi),%eax
c0038bfe:	83 c7 18             	add    $0x18,%edi
c0038c01:	89 41 18             	mov    %eax,0x18(%ecx)
c0038c04:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038c07:	8d 41 20             	lea    0x20(%ecx),%eax
c0038c0a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c0038c0d:	e9 a5 fd ff ff       	jmp    c00389b7 <_realloc_r+0x2d7>
c0038c12:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038c16:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038c1a:	89 34 24             	mov    %esi,(%esp)
c0038c1d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038c20:	e8 2b fa ff ff       	call   c0038650 <memmove>
c0038c25:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038c28:	e9 d9 fe ff ff       	jmp    c0038b06 <_realloc_r+0x426>
c0038c2d:	8b 47 08             	mov    0x8(%edi),%eax
c0038c30:	83 fb 24             	cmp    $0x24,%ebx
c0038c33:	89 41 10             	mov    %eax,0x10(%ecx)
c0038c36:	8b 47 0c             	mov    0xc(%edi),%eax
c0038c39:	89 41 14             	mov    %eax,0x14(%ecx)
c0038c3c:	74 1d                	je     c0038c5b <_realloc_r+0x57b>
c0038c3e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038c41:	83 c7 10             	add    $0x10,%edi
c0038c44:	e9 ad fe ff ff       	jmp    c0038af6 <_realloc_r+0x416>
c0038c49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038c4c:	89 04 24             	mov    %eax,(%esp)
c0038c4f:	e8 bc d6 ff ff       	call   c0036310 <__malloc_unlock>
c0038c54:	31 c0                	xor    %eax,%eax
c0038c56:	e9 0c fc ff ff       	jmp    c0038867 <_realloc_r+0x187>
c0038c5b:	8b 47 10             	mov    0x10(%edi),%eax
c0038c5e:	83 c7 18             	add    $0x18,%edi
c0038c61:	89 41 18             	mov    %eax,0x18(%ecx)
c0038c64:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038c67:	8d 41 20             	lea    0x20(%ecx),%eax
c0038c6a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038c6d:	e9 84 fe ff ff       	jmp    c0038af6 <_realloc_r+0x416>
c0038c72:	66 90                	xchg   %ax,%ax
c0038c74:	66 90                	xchg   %ax,%ax
c0038c76:	66 90                	xchg   %ax,%ax
c0038c78:	66 90                	xchg   %ax,%ax
c0038c7a:	66 90                	xchg   %ax,%ax
c0038c7c:	66 90                	xchg   %ax,%ax
c0038c7e:	66 90                	xchg   %ax,%ax

c0038c80 <cleanup_glue>:
c0038c80:	55                   	push   %ebp
c0038c81:	89 e5                	mov    %esp,%ebp
c0038c83:	56                   	push   %esi
c0038c84:	53                   	push   %ebx
c0038c85:	83 ec 10             	sub    $0x10,%esp
c0038c88:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0038c8b:	8b 75 08             	mov    0x8(%ebp),%esi
c0038c8e:	8b 03                	mov    (%ebx),%eax
c0038c90:	85 c0                	test   %eax,%eax
c0038c92:	74 0c                	je     c0038ca0 <cleanup_glue+0x20>
c0038c94:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038c98:	89 34 24             	mov    %esi,(%esp)
c0038c9b:	e8 e0 ff ff ff       	call   c0038c80 <cleanup_glue>
c0038ca0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038ca3:	89 75 08             	mov    %esi,0x8(%ebp)
c0038ca6:	83 c4 10             	add    $0x10,%esp
c0038ca9:	5b                   	pop    %ebx
c0038caa:	5e                   	pop    %esi
c0038cab:	5d                   	pop    %ebp
c0038cac:	e9 3f f7 ff ff       	jmp    c00383f0 <_free_r>
c0038cb1:	eb 0d                	jmp    c0038cc0 <_reclaim_reent>
c0038cb3:	90                   	nop
c0038cb4:	90                   	nop
c0038cb5:	90                   	nop
c0038cb6:	90                   	nop
c0038cb7:	90                   	nop
c0038cb8:	90                   	nop
c0038cb9:	90                   	nop
c0038cba:	90                   	nop
c0038cbb:	90                   	nop
c0038cbc:	90                   	nop
c0038cbd:	90                   	nop
c0038cbe:	90                   	nop
c0038cbf:	90                   	nop

c0038cc0 <_reclaim_reent>:
c0038cc0:	55                   	push   %ebp
c0038cc1:	89 e5                	mov    %esp,%ebp
c0038cc3:	57                   	push   %edi
c0038cc4:	56                   	push   %esi
c0038cc5:	53                   	push   %ebx
c0038cc6:	83 ec 1c             	sub    $0x1c,%esp
c0038cc9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0038ccc:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038cd2:	0f 84 a6 00 00 00    	je     c0038d7e <_reclaim_reent+0xbe>
c0038cd8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0038cdb:	85 d2                	test   %edx,%edx
c0038cdd:	74 46                	je     c0038d25 <_reclaim_reent+0x65>
c0038cdf:	31 c0                	xor    %eax,%eax
c0038ce1:	31 f6                	xor    %esi,%esi
c0038ce3:	90                   	nop
c0038ce4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038ce8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0038ceb:	85 c0                	test   %eax,%eax
c0038ced:	75 0b                	jne    c0038cfa <_reclaim_reent+0x3a>
c0038cef:	eb 1e                	jmp    c0038d0f <_reclaim_reent+0x4f>
c0038cf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038cf8:	89 f8                	mov    %edi,%eax
c0038cfa:	8b 38                	mov    (%eax),%edi
c0038cfc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d00:	89 1c 24             	mov    %ebx,(%esp)
c0038d03:	e8 e8 f6 ff ff       	call   c00383f0 <_free_r>
c0038d08:	85 ff                	test   %edi,%edi
c0038d0a:	75 ec                	jne    c0038cf8 <_reclaim_reent+0x38>
c0038d0c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0038d0f:	83 c6 01             	add    $0x1,%esi
c0038d12:	83 fe 20             	cmp    $0x20,%esi
c0038d15:	89 f0                	mov    %esi,%eax
c0038d17:	75 cf                	jne    c0038ce8 <_reclaim_reent+0x28>
c0038d19:	89 54 24 04          	mov    %edx,0x4(%esp)
c0038d1d:	89 1c 24             	mov    %ebx,(%esp)
c0038d20:	e8 cb f6 ff ff       	call   c00383f0 <_free_r>
c0038d25:	8b 43 40             	mov    0x40(%ebx),%eax
c0038d28:	85 c0                	test   %eax,%eax
c0038d2a:	74 0c                	je     c0038d38 <_reclaim_reent+0x78>
c0038d2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d30:	89 1c 24             	mov    %ebx,(%esp)
c0038d33:	e8 b8 f6 ff ff       	call   c00383f0 <_free_r>
c0038d38:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c0038d3e:	85 c0                	test   %eax,%eax
c0038d40:	74 22                	je     c0038d64 <_reclaim_reent+0xa4>
c0038d42:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038d48:	39 f0                	cmp    %esi,%eax
c0038d4a:	75 06                	jne    c0038d52 <_reclaim_reent+0x92>
c0038d4c:	eb 16                	jmp    c0038d64 <_reclaim_reent+0xa4>
c0038d4e:	66 90                	xchg   %ax,%ax
c0038d50:	89 f8                	mov    %edi,%eax
c0038d52:	8b 38                	mov    (%eax),%edi
c0038d54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d58:	89 1c 24             	mov    %ebx,(%esp)
c0038d5b:	e8 90 f6 ff ff       	call   c00383f0 <_free_r>
c0038d60:	39 fe                	cmp    %edi,%esi
c0038d62:	75 ec                	jne    c0038d50 <_reclaim_reent+0x90>
c0038d64:	8b 43 54             	mov    0x54(%ebx),%eax
c0038d67:	85 c0                	test   %eax,%eax
c0038d69:	74 0c                	je     c0038d77 <_reclaim_reent+0xb7>
c0038d6b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d6f:	89 1c 24             	mov    %ebx,(%esp)
c0038d72:	e8 79 f6 ff ff       	call   c00383f0 <_free_r>
c0038d77:	8b 43 38             	mov    0x38(%ebx),%eax
c0038d7a:	85 c0                	test   %eax,%eax
c0038d7c:	75 08                	jne    c0038d86 <_reclaim_reent+0xc6>
c0038d7e:	83 c4 1c             	add    $0x1c,%esp
c0038d81:	5b                   	pop    %ebx
c0038d82:	5e                   	pop    %esi
c0038d83:	5f                   	pop    %edi
c0038d84:	5d                   	pop    %ebp
c0038d85:	c3                   	ret    
c0038d86:	89 1c 24             	mov    %ebx,(%esp)
c0038d89:	ff 53 3c             	call   *0x3c(%ebx)
c0038d8c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038d92:	85 c0                	test   %eax,%eax
c0038d94:	74 e8                	je     c0038d7e <_reclaim_reent+0xbe>
c0038d96:	89 1c 24             	mov    %ebx,(%esp)
c0038d99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d9d:	e8 de fe ff ff       	call   c0038c80 <cleanup_glue>
c0038da2:	83 c4 1c             	add    $0x1c,%esp
c0038da5:	5b                   	pop    %ebx
c0038da6:	5e                   	pop    %esi
c0038da7:	5f                   	pop    %edi
c0038da8:	5d                   	pop    %ebp
c0038da9:	c3                   	ret    
