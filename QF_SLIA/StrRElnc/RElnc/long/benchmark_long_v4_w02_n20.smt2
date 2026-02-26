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

(assert (= y (str.++ "89" "26" z x a "97")))

(assert (str.in_re z (re.++ (re.+ (str.to_re "360")) (re.++ (re.+ (re.range "2" "9")) (str.to_re "177")))))
(assert (str.in_re y (re.+ (re.+ (re.union (re.range "1" "9") (re.* (str.to_re "60")))))))
(assert (str.in_re x (re.union (re.* (str.to_re "575")) (str.to_re "95"))))
(assert (str.in_re a (re.union (re.+ (str.to_re "19")) (str.to_re "55"))))

(assert (= (+ (* 10 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 4) (str.to_int z)) (* 7 (str.to_int a))) 36))
(assert (< (+ (str.len x) (* (- 9) (str.len y)) (* (- 3) (str.len a))) 60))

(check-sat)