"""5. if 조건문"""
# - 조건이 맞을 때만 코드 실행시켜줌
# - 조건식엔 부등호, 등호를 자주 씀
# - 조건식엔 in 문법도 자주 씀
# - else를 뒤에 붙여 사용가능 (= if 단독으로 사용가능)
# * elif : 차례차례 조건을 여러개 검사할 때

재고량 = 10

'''
    if 조건식 :
        실행할코드(조건식이 참일 때)
'''

if 재고량 > 0 :
    print('지금 주문 가능합니다.')

중고차재고 = ['K5', 'BMW', 'Tico']

if 'K5' in 중고차재고 :
    print('지금 주문 가능합니다.')

if 'K9' in 중고차재고 :
    print('지금 주문 가능합니다.')
else :
    print('주문이 불가능합니다.')

