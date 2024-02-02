
level08:     file format elf32-i386


Disassembly of section .init:

080483b4 <_init>:
 80483b4:	53                   	push   %ebx
 80483b5:	83 ec 08             	sub    $0x8,%esp
 80483b8:	e8 00 00 00 00       	call   80483bd <_init+0x9>
 80483bd:	5b                   	pop    %ebx
 80483be:	81 c3 37 1c 00 00    	add    $0x1c37,%ebx
 80483c4:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483ca:	85 c0                	test   %eax,%eax
 80483cc:	74 05                	je     80483d3 <_init+0x1f>
 80483ce:	e8 7d 00 00 00       	call   8048450 <__gmon_start__@plt>
 80483d3:	e8 58 01 00 00       	call   8048530 <frame_dummy>
 80483d8:	e8 53 03 00 00       	call   8048730 <__do_global_ctors_aux>
 80483dd:	83 c4 08             	add    $0x8,%esp
 80483e0:	5b                   	pop    %ebx
 80483e1:	c3                   	ret    

Disassembly of section .plt:

080483f0 <.plt>:
 80483f0:	ff 35 f8 9f 04 08    	push   0x8049ff8
 80483f6:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483fc:	00 00                	add    %al,(%eax)
	...

08048400 <strstr@plt>:
 8048400:	ff 25 00 a0 04 08    	jmp    *0x804a000
 8048406:	68 00 00 00 00       	push   $0x0
 804840b:	e9 e0 ff ff ff       	jmp    80483f0 <.plt>

08048410 <read@plt>:
 8048410:	ff 25 04 a0 04 08    	jmp    *0x804a004
 8048416:	68 08 00 00 00       	push   $0x8
 804841b:	e9 d0 ff ff ff       	jmp    80483f0 <.plt>

08048420 <printf@plt>:
 8048420:	ff 25 08 a0 04 08    	jmp    *0x804a008
 8048426:	68 10 00 00 00       	push   $0x10
 804842b:	e9 c0 ff ff ff       	jmp    80483f0 <.plt>

08048430 <__stack_chk_fail@plt>:
 8048430:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048436:	68 18 00 00 00       	push   $0x18
 804843b:	e9 b0 ff ff ff       	jmp    80483f0 <.plt>

08048440 <err@plt>:
 8048440:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048446:	68 20 00 00 00       	push   $0x20
 804844b:	e9 a0 ff ff ff       	jmp    80483f0 <.plt>

08048450 <__gmon_start__@plt>:
 8048450:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048456:	68 28 00 00 00       	push   $0x28
 804845b:	e9 90 ff ff ff       	jmp    80483f0 <.plt>

08048460 <exit@plt>:
 8048460:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048466:	68 30 00 00 00       	push   $0x30
 804846b:	e9 80 ff ff ff       	jmp    80483f0 <.plt>

08048470 <open@plt>:
 8048470:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048476:	68 38 00 00 00       	push   $0x38
 804847b:	e9 70 ff ff ff       	jmp    80483f0 <.plt>

08048480 <__libc_start_main@plt>:
 8048480:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048486:	68 40 00 00 00       	push   $0x40
 804848b:	e9 60 ff ff ff       	jmp    80483f0 <.plt>

08048490 <write@plt>:
 8048490:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048496:	68 48 00 00 00       	push   $0x48
 804849b:	e9 50 ff ff ff       	jmp    80483f0 <.plt>

Disassembly of section .text:

080484a0 <_start>:
 80484a0:	31 ed                	xor    %ebp,%ebp
 80484a2:	5e                   	pop    %esi
 80484a3:	89 e1                	mov    %esp,%ecx
 80484a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484a8:	50                   	push   %eax
 80484a9:	54                   	push   %esp
 80484aa:	52                   	push   %edx
 80484ab:	68 20 87 04 08       	push   $0x8048720
 80484b0:	68 b0 86 04 08       	push   $0x80486b0
 80484b5:	51                   	push   %ecx
 80484b6:	56                   	push   %esi
 80484b7:	68 54 85 04 08       	push   $0x8048554
 80484bc:	e8 bf ff ff ff       	call   8048480 <__libc_start_main@plt>
 80484c1:	f4                   	hlt    
 80484c2:	90                   	nop
 80484c3:	90                   	nop
 80484c4:	90                   	nop
 80484c5:	90                   	nop
 80484c6:	90                   	nop
 80484c7:	90                   	nop
 80484c8:	90                   	nop
 80484c9:	90                   	nop
 80484ca:	90                   	nop
 80484cb:	90                   	nop
 80484cc:	90                   	nop
 80484cd:	90                   	nop
 80484ce:	90                   	nop
 80484cf:	90                   	nop

080484d0 <__do_global_dtors_aux>:
 80484d0:	55                   	push   %ebp
 80484d1:	89 e5                	mov    %esp,%ebp
 80484d3:	53                   	push   %ebx
 80484d4:	83 ec 04             	sub    $0x4,%esp
 80484d7:	80 3d 30 a0 04 08 00 	cmpb   $0x0,0x804a030
 80484de:	75 3f                	jne    804851f <__do_global_dtors_aux+0x4f>
 80484e0:	a1 34 a0 04 08       	mov    0x804a034,%eax
 80484e5:	bb 20 9f 04 08       	mov    $0x8049f20,%ebx
 80484ea:	81 eb 1c 9f 04 08    	sub    $0x8049f1c,%ebx
 80484f0:	c1 fb 02             	sar    $0x2,%ebx
 80484f3:	83 eb 01             	sub    $0x1,%ebx
 80484f6:	39 d8                	cmp    %ebx,%eax
 80484f8:	73 1e                	jae    8048518 <__do_global_dtors_aux+0x48>
 80484fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048500:	83 c0 01             	add    $0x1,%eax
 8048503:	a3 34 a0 04 08       	mov    %eax,0x804a034
 8048508:	ff 14 85 1c 9f 04 08 	call   *0x8049f1c(,%eax,4)
 804850f:	a1 34 a0 04 08       	mov    0x804a034,%eax
 8048514:	39 d8                	cmp    %ebx,%eax
 8048516:	72 e8                	jb     8048500 <__do_global_dtors_aux+0x30>
 8048518:	c6 05 30 a0 04 08 01 	movb   $0x1,0x804a030
 804851f:	83 c4 04             	add    $0x4,%esp
 8048522:	5b                   	pop    %ebx
 8048523:	5d                   	pop    %ebp
 8048524:	c3                   	ret    
 8048525:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048530 <frame_dummy>:
 8048530:	55                   	push   %ebp
 8048531:	89 e5                	mov    %esp,%ebp
 8048533:	83 ec 18             	sub    $0x18,%esp
 8048536:	a1 24 9f 04 08       	mov    0x8049f24,%eax
 804853b:	85 c0                	test   %eax,%eax
 804853d:	74 12                	je     8048551 <frame_dummy+0x21>
 804853f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048544:	85 c0                	test   %eax,%eax
 8048546:	74 09                	je     8048551 <frame_dummy+0x21>
 8048548:	c7 04 24 24 9f 04 08 	movl   $0x8049f24,(%esp)
 804854f:	ff d0                	call   *%eax
 8048551:	c9                   	leave  
 8048552:	c3                   	ret    
 8048553:	90                   	nop

08048554 <main>:
 8048554:	55                   	push   %ebp
 8048555:	89 e5                	mov    %esp,%ebp
 8048557:	83 e4 f0             	and    $0xfffffff0,%esp
 804855a:	81 ec 30 04 00 00    	sub    $0x430,%esp
 8048560:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048563:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048567:	8b 45 10             	mov    0x10(%ebp),%eax
 804856a:	89 44 24 18          	mov    %eax,0x18(%esp)
 804856e:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048574:	89 84 24 2c 04 00 00 	mov    %eax,0x42c(%esp)
 804857b:	31 c0                	xor    %eax,%eax
 804857d:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8048581:	75 23                	jne    80485a6 <main+0x52>
 8048583:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048587:	8b 10                	mov    (%eax),%edx
 8048589:	b8 80 87 04 08       	mov    $0x8048780,%eax
 804858e:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048592:	89 04 24             	mov    %eax,(%esp)
 8048595:	e8 86 fe ff ff       	call   8048420 <printf@plt>
 804859a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80485a1:	e8 ba fe ff ff       	call   8048460 <exit@plt>
 80485a6:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80485aa:	83 c0 04             	add    $0x4,%eax
 80485ad:	8b 00                	mov    (%eax),%eax
 80485af:	c7 44 24 04 93 87 04 	movl   $0x8048793,0x4(%esp)
 80485b6:	08 
 80485b7:	89 04 24             	mov    %eax,(%esp)
 80485ba:	e8 41 fe ff ff       	call   8048400 <strstr@plt>
 80485bf:	85 c0                	test   %eax,%eax
 80485c1:	74 26                	je     80485e9 <main+0x95>
 80485c3:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80485c7:	83 c0 04             	add    $0x4,%eax
 80485ca:	8b 10                	mov    (%eax),%edx
 80485cc:	b8 99 87 04 08       	mov    $0x8048799,%eax
 80485d1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80485d5:	89 04 24             	mov    %eax,(%esp)
 80485d8:	e8 43 fe ff ff       	call   8048420 <printf@plt>
 80485dd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80485e4:	e8 77 fe ff ff       	call   8048460 <exit@plt>
 80485e9:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80485ed:	83 c0 04             	add    $0x4,%eax
 80485f0:	8b 00                	mov    (%eax),%eax
 80485f2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80485f9:	00 
 80485fa:	89 04 24             	mov    %eax,(%esp)
 80485fd:	e8 6e fe ff ff       	call   8048470 <open@plt>
 8048602:	89 44 24 24          	mov    %eax,0x24(%esp)
 8048606:	83 7c 24 24 ff       	cmpl   $0xffffffff,0x24(%esp)
 804860b:	75 21                	jne    804862e <main+0xda>
 804860d:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048611:	83 c0 04             	add    $0x4,%eax
 8048614:	8b 00                	mov    (%eax),%eax
 8048616:	89 44 24 08          	mov    %eax,0x8(%esp)
 804861a:	c7 44 24 04 b2 87 04 	movl   $0x80487b2,0x4(%esp)
 8048621:	08 
 8048622:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048629:	e8 12 fe ff ff       	call   8048440 <err@plt>
 804862e:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 8048635:	00 
 8048636:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 804863a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804863e:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048642:	89 04 24             	mov    %eax,(%esp)
 8048645:	e8 c6 fd ff ff       	call   8048410 <read@plt>
 804864a:	89 44 24 28          	mov    %eax,0x28(%esp)
 804864e:	83 7c 24 28 ff       	cmpl   $0xffffffff,0x28(%esp)
 8048653:	75 1c                	jne    8048671 <main+0x11d>
 8048655:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048659:	89 44 24 08          	mov    %eax,0x8(%esp)
 804865d:	c7 44 24 04 c4 87 04 	movl   $0x80487c4,0x4(%esp)
 8048664:	08 
 8048665:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804866c:	e8 cf fd ff ff       	call   8048440 <err@plt>
 8048671:	8b 44 24 28          	mov    0x28(%esp),%eax
 8048675:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048679:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 804867d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048681:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048688:	e8 03 fe ff ff       	call   8048490 <write@plt>
 804868d:	8b 94 24 2c 04 00 00 	mov    0x42c(%esp),%edx
 8048694:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804869b:	74 05                	je     80486a2 <main+0x14e>
 804869d:	e8 8e fd ff ff       	call   8048430 <__stack_chk_fail@plt>
 80486a2:	c9                   	leave  
 80486a3:	c3                   	ret    
 80486a4:	90                   	nop
 80486a5:	90                   	nop
 80486a6:	90                   	nop
 80486a7:	90                   	nop
 80486a8:	90                   	nop
 80486a9:	90                   	nop
 80486aa:	90                   	nop
 80486ab:	90                   	nop
 80486ac:	90                   	nop
 80486ad:	90                   	nop
 80486ae:	90                   	nop
 80486af:	90                   	nop

080486b0 <__libc_csu_init>:
 80486b0:	55                   	push   %ebp
 80486b1:	57                   	push   %edi
 80486b2:	56                   	push   %esi
 80486b3:	53                   	push   %ebx
 80486b4:	e8 69 00 00 00       	call   8048722 <__i686.get_pc_thunk.bx>
 80486b9:	81 c3 3b 19 00 00    	add    $0x193b,%ebx
 80486bf:	83 ec 1c             	sub    $0x1c,%esp
 80486c2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80486c6:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 80486cc:	e8 e3 fc ff ff       	call   80483b4 <_init>
 80486d1:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 80486d7:	29 c7                	sub    %eax,%edi
 80486d9:	c1 ff 02             	sar    $0x2,%edi
 80486dc:	85 ff                	test   %edi,%edi
 80486de:	74 29                	je     8048709 <__libc_csu_init+0x59>
 80486e0:	31 f6                	xor    %esi,%esi
 80486e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486e8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80486ec:	89 2c 24             	mov    %ebp,(%esp)
 80486ef:	89 44 24 08          	mov    %eax,0x8(%esp)
 80486f3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80486f7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486fb:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 8048702:	83 c6 01             	add    $0x1,%esi
 8048705:	39 fe                	cmp    %edi,%esi
 8048707:	75 df                	jne    80486e8 <__libc_csu_init+0x38>
 8048709:	83 c4 1c             	add    $0x1c,%esp
 804870c:	5b                   	pop    %ebx
 804870d:	5e                   	pop    %esi
 804870e:	5f                   	pop    %edi
 804870f:	5d                   	pop    %ebp
 8048710:	c3                   	ret    
 8048711:	eb 0d                	jmp    8048720 <__libc_csu_fini>
 8048713:	90                   	nop
 8048714:	90                   	nop
 8048715:	90                   	nop
 8048716:	90                   	nop
 8048717:	90                   	nop
 8048718:	90                   	nop
 8048719:	90                   	nop
 804871a:	90                   	nop
 804871b:	90                   	nop
 804871c:	90                   	nop
 804871d:	90                   	nop
 804871e:	90                   	nop
 804871f:	90                   	nop

08048720 <__libc_csu_fini>:
 8048720:	f3 c3                	repz ret 

08048722 <__i686.get_pc_thunk.bx>:
 8048722:	8b 1c 24             	mov    (%esp),%ebx
 8048725:	c3                   	ret    
 8048726:	90                   	nop
 8048727:	90                   	nop
 8048728:	90                   	nop
 8048729:	90                   	nop
 804872a:	90                   	nop
 804872b:	90                   	nop
 804872c:	90                   	nop
 804872d:	90                   	nop
 804872e:	90                   	nop
 804872f:	90                   	nop

08048730 <__do_global_ctors_aux>:
 8048730:	55                   	push   %ebp
 8048731:	89 e5                	mov    %esp,%ebp
 8048733:	53                   	push   %ebx
 8048734:	83 ec 04             	sub    $0x4,%esp
 8048737:	a1 14 9f 04 08       	mov    0x8049f14,%eax
 804873c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804873f:	74 13                	je     8048754 <__do_global_ctors_aux+0x24>
 8048741:	bb 14 9f 04 08       	mov    $0x8049f14,%ebx
 8048746:	66 90                	xchg   %ax,%ax
 8048748:	83 eb 04             	sub    $0x4,%ebx
 804874b:	ff d0                	call   *%eax
 804874d:	8b 03                	mov    (%ebx),%eax
 804874f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048752:	75 f4                	jne    8048748 <__do_global_ctors_aux+0x18>
 8048754:	83 c4 04             	add    $0x4,%esp
 8048757:	5b                   	pop    %ebx
 8048758:	5d                   	pop    %ebp
 8048759:	c3                   	ret    
 804875a:	90                   	nop
 804875b:	90                   	nop

Disassembly of section .fini:

0804875c <_fini>:
 804875c:	53                   	push   %ebx
 804875d:	83 ec 08             	sub    $0x8,%esp
 8048760:	e8 00 00 00 00       	call   8048765 <_fini+0x9>
 8048765:	5b                   	pop    %ebx
 8048766:	81 c3 8f 18 00 00    	add    $0x188f,%ebx
 804876c:	e8 5f fd ff ff       	call   80484d0 <__do_global_dtors_aux>
 8048771:	83 c4 08             	add    $0x8,%esp
 8048774:	5b                   	pop    %ebx
 8048775:	c3                   	ret    
