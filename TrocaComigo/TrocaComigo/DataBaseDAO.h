//
//  DataBaseDAO.h
//  fireBaseOBJC
//
//  Created by Pedro Miranda on 3/18/15.
//  Copyright (c) 2015 Pedro Miranda. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSMutableArray *arrLSBGoals;


@interface DataBaseDAO : NSObject
@property (nonatomic,retain) NSMutableArray *arrLSBGoals;
@property NSInteger consultaFinalizada;
// Usuario
@property NSString *nome;
@property NSString *sexo;
@property NSString *dataNasc;
@property NSString *idade;
@property NSString *tamanho;
@property NSString *email;
@property NSString *celular;
@property NSString *facebook;
@property NSString *key;

// Roupa
@property NSString *codRoupa;
@property NSString *usermail;
@property NSString *tipoRoupa;
@property NSString *nomeRoupa;
@property NSString *foto;
//@property NSString *tamanho;
-(NSMutableArray*)getUserSpecsWithEmail:(NSString*)email;
-(NSMutableArray*)getUser;
-(NSDictionary*)createUserWithMail:(NSString*)email Nome:(NSString*)name Idade:(NSString*)idade Nasc:(NSString*)datadenasc Tamanho:(NSString*)tamanho Sexo:(NSString*)sexo  Celular:(NSString*)celular Facebook:(NSString*)facebook;

@end
