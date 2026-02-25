(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.union (re.+ (re.range "6" "8")) (re.union (str.to_re "66") (str.to_re "83")))))
(assert (str.in_re x (re.+ (re.++ (re.range "1" "7") (str.to_re "528")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "85") (str.to_re "426")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "8") (re.++ (str.to_re "75") (re.range "3" "7"))))))

(assert (>= (+ (* 7 (str.len y)) (* 6 (str.len a)) (* (- 6) (str.to_int x))) 66))

(check-sat)