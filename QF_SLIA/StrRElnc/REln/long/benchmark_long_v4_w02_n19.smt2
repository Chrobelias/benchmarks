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
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re y (re.* (re.+ (re.+ (str.to_re "14"))))))
(assert (str.in_re x (re.++ (str.to_re "15") (re.+ (re.+ (str.to_re "49"))))))
(assert (str.in_re z (re.+ (re.union (str.to_re "463") (str.to_re "68")))))
(assert (str.in_re a (re.union (re.+ (re.union (str.to_re "163") (re.range "6" "9"))) (str.to_re "7"))))

(assert (= (+ (* 6 (str.len x)) (* (- 2) (str.to_int z))) 78))

(check-sat)