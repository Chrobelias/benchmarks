(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x "49" z) (str.++ y "78" a "69")))

(assert (str.in_re y (re.++ (re.union (re.+ (re.range "0" "9")) (re.range "0" "2")) (str.to_re "77"))))
(assert (str.in_re z (re.++ (re.* (str.to_re "82")) (re.* (re.+ (re.range "3" "9"))))))
(assert (str.in_re a (re.* (re.union (str.to_re "447") (re.range "3" "8")))))
(assert (str.in_re x (re.++ (re.* (re.range "0" "8")) (str.to_re "39"))))

(assert (> (+ (* 8 (str.len y)) (* (- 2) (str.len a)) (* (- 5) (str.to_int x)) (* (- 4) (str.to_int z)) (* 10 (str.to_int a))) 48))

(check-sat)