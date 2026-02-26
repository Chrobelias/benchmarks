(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))

(assert (= a (str.++ "68" "24" z x y)))

(assert (str.in_re y (re.* (re.range "6" "9"))))
(assert (str.in_re a (re.union (re.+ (str.to_re "73")) (re.* (re.range "0" "9")))))
(assert (str.in_re z (re.+ (re.union (re.+ (str.to_re "623")) (re.+ (str.to_re "158"))))))
(assert (str.in_re x (re.* (re.+ (re.+ (re.* (str.to_re "10")))))))

(assert (> (+ (* 9 (str.len x)) (* 5 (str.len y)) (* 4 (str.len a))) 16))
(assert (= (+ (* 5 (str.to_int x)) (* (- 9) (str.to_int y)) (* 10 (str.to_int z)) (* (- 6) (str.to_int a))) 61))

(check-sat)