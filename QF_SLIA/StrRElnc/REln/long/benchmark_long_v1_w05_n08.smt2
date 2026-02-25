(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (re.++ (re.+ (str.to_re "657")) (re.range "5" "9")) (re.range "6" "8")))))

(assert (= (* (- 6) (str.len x)) 94))
(assert (<= (+ (* 3 (str.len x)) (- (str.to_int x))) 87))
(assert (<= (+ (* (- 10) (str.len x)) (str.to_int x)) 79))

(check-sat)