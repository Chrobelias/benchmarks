(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "366"))) (re.+ (str.to_re "8")))))
(assert (str.in_re z (re.union (re.* (str.to_re "633")) (str.to_re "47"))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "31") (re.range "0" "8")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "822")) (re.union (str.to_re "3") (re.* (str.to_re "51"))))))

(assert (<= (+ (* 8 (str.len y)) (* (- 2) (str.to_int x)) (* (- 10) (str.to_int a))) 16))

(check-sat)