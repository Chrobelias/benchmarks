(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ "74" z x a)))

(assert (str.in_re y (re.+ (re.++ (re.range "2" "8") (re.* (str.to_re "0"))))))
(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "3")) (str.to_re "52")) (str.to_re "35"))))
(assert (str.in_re a (re.* (re.range "5" "9"))))
(assert (str.in_re z (re.* (re.* (re.+ (re.* (str.to_re "67")))))))

(assert (> (+ (- (str.len x)) (* (- 7) (str.len y)) (* 5 (str.len z)) (* (- 10) (str.len a))) 9))
(assert (= (+ (* (- 3) (str.to_int x)) (* 7 (str.to_int y)) (* (- 4) (str.to_int z)) (* (- 2) (str.to_int a))) 49))

(check-sat)