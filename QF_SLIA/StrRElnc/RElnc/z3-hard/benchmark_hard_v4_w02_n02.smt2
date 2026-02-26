(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= x (str.++ "32" "79" a y z)))

(assert (str.in_re z (re.+ (re.++ (re.+ (re.range "6" "8")) (re.range "2" "5")))))
(assert (str.in_re x (re.+ (re.union (re.+ (str.to_re "34")) (re.* (re.range "1" "9"))))))
(assert (str.in_re a (re.* (re.union (str.to_re "274") (re.* (str.to_re "5"))))))
(assert (str.in_re y (re.union (re.++ (str.to_re "80") (re.union (re.+ (str.to_re "6")) (str.to_re "95"))) (str.to_re "655"))))

(assert (= (+ (* (- 2) (str.len a)) (* (- 3) (str.to_int x)) (* 10 (str.to_int a))) 64))

(check-sat)