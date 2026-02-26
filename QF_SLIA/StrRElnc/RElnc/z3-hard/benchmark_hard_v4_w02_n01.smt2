(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x "68" a) (str.++ "28" z y)))

(assert (str.in_re y (re.union (str.to_re "322") (re.+ (re.+ (str.to_re "9"))))))
(assert (str.in_re x (re.++ (re.range "1" "4") (re.+ (str.to_re "8")))))
(assert (str.in_re a (re.union (re.+ (re.range "0" "2")) (re.+ (re.range "7" "9")))))
(assert (str.in_re z (re.union (str.to_re "1") (re.+ (re.++ (re.range "6" "9") (re.* (str.to_re "1")))))))

(assert (= (+ (* 10 (str.len y)) (* (- 3) (str.to_int y))) 23))

(check-sat)