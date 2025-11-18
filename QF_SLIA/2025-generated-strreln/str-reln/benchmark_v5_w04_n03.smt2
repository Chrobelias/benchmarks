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

(assert (str.in_re x (re.* (str.to_re "37"))))
(assert (str.in_re y (re.++ (str.to_re "22") (re.+ (re.* (str.to_re "60"))))))
(assert (str.in_re z (re.+ (re.+ (re.++ (re.+ (str.to_re "3")) (re.range "6" "9"))))))
(assert (str.in_re a (re.+ (re.+ (re.* (str.to_re "8"))))))
(assert (str.in_re b (re.+ (re.union (str.to_re "12") (re.+ (re.+ (str.to_re "506")))))))

(assert (< (+ (* 8 (str.len x)) (* (- 4) (str.len y)) (* 9 (str.len z)) (* 10 (str.len a)) (* (- 9) (str.len b))) 37))
(assert (<= (+ (* 8 (str.len a)) (* 7 (str.to_int z))) 88))
(assert (<= (+ (str.len x) (* (- 7) (str.len y)) (* (- 2) (str.len z)) (* (- 3) (str.len a)) (* 5 (str.len b))) 17))

(check-sat)