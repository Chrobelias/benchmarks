(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (str.to_re "53"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "5") (re.union (re.+ (str.to_re "4")) (str.to_re "621"))) (str.to_re "473"))))
(assert (str.in_re z (re.++ (re.union (re.* (re.range "7" "9")) (str.to_re "453")) (re.* (str.to_re "609")))))
(assert (str.in_re a (re.+ (re.+ (re.* (str.to_re "100"))))))
(assert (str.in_re b (re.+ (re.union (str.to_re "615") (re.++ (re.* (str.to_re "347")) (str.to_re "1"))))))

(assert (< (+ (* 2 (str.to_int x)) (* (- 5) (str.to_int y)) (* 8 (str.to_int z)) (* 10 (str.to_int a)) (* 7 (str.to_int b))) 17))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 8) (str.len y)) (* 4 (str.len z)) (* (- 7) (str.len a)) (* 8 (str.len b))) 41))
(assert (<= (+ (* 8 (str.len x)) (* 8 (str.len y)) (- (str.len z)) (- (str.len a)) (* (- 3) (str.len b))) 94))

(check-sat)