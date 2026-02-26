(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ y z) (str.++ "46" x)))

(assert (str.in_re x (re.union (str.to_re "80") (re.* (re.+ (re.range "7" "9"))))))
(assert (str.in_re y (re.* (re.++ (re.range "0" "4") (re.* (re.range "7" "9"))))))
(assert (str.in_re z (re.* (re.range "5" "7"))))

(assert (< (+ (* 9 (str.len y)) (* 4 (str.to_int x))) 56))
(assert (= (+ (* 5 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 3) (str.to_int z))) 45))

(check-sat)